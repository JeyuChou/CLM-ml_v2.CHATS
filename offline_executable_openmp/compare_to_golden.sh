#!/bin/bash
# compare_to_golden.sh [-v|--verbose] <run_output_dir> <reference_dir>
#
# Compares every *.out file in <reference_dir> against <run_output_dir>.
# Exact text match is required (outputs are fixed-format ASCII).
# Prints PASS or FAIL and exits nonzero on any mismatch or missing file.
# Extra *.out files in the run dir (not in reference) are also flagged.
#
# Additionally checks tower self-consistency WITHIN each directory: files are
# grouped across towers by a _t<N>_ marker (e.g. _t01_, _t02_, ..., _t100_).
# Tower 1 is compared against every other tower, and tower 2 against tower 3.
# Each directory's tower check reports its own TOWER-PASS/TOWER-FAIL, separate
# from the golden PASS/FAIL, but any failure still makes the script exit nonzero.
#
# By default only summary messages are printed. Pass -v/--verbose to also
# print the full diff for each file that differs.

set -euo pipefail

usage() {
    echo "Usage: $0 [-v|--verbose] <run_output_dir> <reference_dir>" >&2
}

# Within a single directory, verify that towers produced identical output.
# Towers are identified by a filename marker _t<N>_ (e.g. _t01_, _t02_, ...,
# _t100_; N may exceed 99). Files are matched across towers by canonicalizing
# that marker to _tXX_.
#
# Comparisons performed (each only if both towers exist):
#   * tower 1 vs every other tower
#   * tower 2 vs tower 3
# For each pair: files one tower has but the other lacks are reported, and
# files both towers have are diffed (full diff printed only under --verbose).
#
# Prints its own TOWER-PASS/TOWER-FAIL summary for the directory and returns
# 0 on pass, 1 on any content mismatch or missing file.
check_tower_consistency() {
    local dir="$1"
    local label="$2"
    local ok=true

    # Distinct tower marker strings present, in numeric order (e.g. 01 02 100)
    local markers
    markers=$(find "$dir" -maxdepth 1 -name '*.out' -printf '%f\n' \
                | sed -nE 's/.*_t([0-9]+)_.*/\1/p' | sort -n -u)

    if [ -z "$markers" ]; then
        echo "  TOWER-SKIP ($label): no tower output files (_t<N>_) found"
        return 0
    fi

    local -a marker_arr
    mapfile -t marker_arr <<< "$markers"

    # Map tower numbers 1/2/3 to their (possibly zero-padded) marker strings
    local m1="" m2="" m3="" m
    for m in "${marker_arr[@]}"; do
        case $((10#$m)) in
            1) m1="$m" ;;
            2) m2="$m" ;;
            3) m3="$m" ;;
        esac
    done

    # Pairs to compare: tower 1 vs each other tower, plus tower 2 vs tower 3
    local -a pairs=()
    if [ -n "$m1" ]; then
        for m in "${marker_arr[@]}"; do
            if [ "$m" != "$m1" ]; then
                pairs+=("$m1 $m")
            fi
        done
    fi
    if [ -n "$m2" ] && [ -n "$m3" ]; then
        pairs+=("$m2 $m3")
    fi

    if [ ${#pairs[@]} -eq 0 ]; then
        echo "  TOWER-SKIP ($label): fewer than two towers present; nothing to compare"
        return 0
    fi

    local pair mA mB keysA keysB only_a only_b both key fa fb
    for pair in "${pairs[@]}"; do
        mA=${pair% *}
        mB=${pair#* }

        # Canonical keys (filename with this tower's marker replaced by _tXX_)
        keysA=$(find "$dir" -maxdepth 1 -name "*_t${mA}_*.out" -printf '%f\n' \
                  | sed "s/_t${mA}_/_tXX_/" | sort -u)
        keysB=$(find "$dir" -maxdepth 1 -name "*_t${mB}_*.out" -printf '%f\n' \
                  | sed "s/_t${mB}_/_tXX_/" | sort -u)

        only_a=$(comm -23 <(printf '%s\n' "$keysA") <(printf '%s\n' "$keysB"))
        only_b=$(comm -13 <(printf '%s\n' "$keysA") <(printf '%s\n' "$keysB"))
        both=$(comm -12 <(printf '%s\n' "$keysA") <(printf '%s\n' "$keysB"))

        # Files tower mA has but tower mB does not
        if [ -n "$only_a" ]; then
            while IFS= read -r key; do
                if [ -n "$key" ]; then
                    fa="${key/_tXX_/_t${mA}_}"
                    echo "  TOWER MISSING in $label: tower $mA has $fa but tower $mB does not"
                    ok=false
                fi
            done <<< "$only_a"
        fi
        # Files tower mB has but tower mA does not
        if [ -n "$only_b" ]; then
            while IFS= read -r key; do
                if [ -n "$key" ]; then
                    fb="${key/_tXX_/_t${mB}_}"
                    echo "  TOWER MISSING in $label: tower $mB has $fb but tower $mA does not"
                    ok=false
                fi
            done <<< "$only_b"
        fi
        # Files both towers have: compare content
        if [ -n "$both" ]; then
            while IFS= read -r key; do
                if [ -n "$key" ]; then
                    fa="${key/_tXX_/_t${mA}_}"
                    fb="${key/_tXX_/_t${mB}_}"
                    if ! diff -q "$dir/$fa" "$dir/$fb" > /dev/null; then
                        echo "  TOWER DIFFER in $label: $fa vs $fb"
                        if $VERBOSE; then
                            diff "$dir/$fa" "$dir/$fb" || true
                        fi
                        ok=false
                    fi
                fi
            done <<< "$both"
        fi
    done

    if $ok; then
        echo "TOWER-PASS ($label): all compared towers produced identical output"
        return 0
    else
        echo "TOWER-FAIL ($label): towers differ in '$dir'"
        return 1
    fi
}

VERBOSE=false
POSITIONAL=()
while [ $# -gt 0 ]; do
    case "$1" in
        -v|--verbose)
            VERBOSE=true
            shift
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        --)
            shift
            while [ $# -gt 0 ]; do POSITIONAL+=("$1"); shift; done
            ;;
        -*)
            echo "ERROR: unknown option '$1'" >&2
            usage
            exit 1
            ;;
        *)
            POSITIONAL+=("$1")
            shift
            ;;
    esac
done

if [ ${#POSITIONAL[@]} -ne 2 ]; then
    usage
    exit 1
fi

RUN_DIR="${POSITIONAL[0]}"
REF_DIR="${POSITIONAL[1]}"

[[ -d "$RUN_DIR" ]] || { echo "ERROR: '$RUN_DIR' is not a directory" >&2; exit 1; }
[[ -d "$REF_DIR" ]] || { echo "ERROR: '$REF_DIR' is not a directory" >&2; exit 1; }

n_ref=$(find "$REF_DIR" -maxdepth 1 -name '*.out' | wc -l)
if [ "$n_ref" -eq 0 ]; then
    echo "ERROR: no *.out files found in reference dir '$REF_DIR'" >&2
    exit 1
fi

n_run=$(find "$RUN_DIR" -maxdepth 1 -name '*.out' | wc -l)
if [ "$n_run" -eq 0 ]; then
    echo "FAIL: no *.out files found in run dir '$RUN_DIR'"
    exit 1
fi

PASS=true

# Check each reference file exists and matches in the run dir
echo "Do files from run dir match those in ref dir?"
while IFS= read -r ref_file; do
    fname=$(basename "$ref_file")
    run_file="$RUN_DIR/$fname"
    if [[ ! -f "$run_file" ]]; then
        echo "  MISSING in run dir: $fname"
        PASS=false
    elif ! diff -q "$ref_file" "$run_file" > /dev/null; then
        echo "  DIFFER: $fname"
        if $VERBOSE; then
            diff "$ref_file" "$run_file" || true
        fi
        PASS=false
    else
        echo "  MATCH: $fname"
    fi
done < <(find "$REF_DIR" -maxdepth 1 -name '*.out' | sort)

# Flag extra *.out files in run dir that are not in the reference
while IFS= read -r run_file; do
    fname=$(basename "$run_file")
    if [[ ! -f "$REF_DIR/$fname" ]]; then
        echo "  EXTRA in run dir (not in reference): $fname"
        PASS=false
    fi
done < <(find "$RUN_DIR" -maxdepth 1 -name '*.out' | sort)

if $PASS; then
    echo "PASS: $n_ref *.out files match golden reference ($REF_DIR)"
else
    echo "FAIL: differences detected between '$RUN_DIR' and '$REF_DIR'"
fi

# Tower self-consistency checks, reported independently of the golden result:
# within each directory, do the towers agree with one another?
echo
echo "Do towers within each directory produce identical output?"
tower_ok=true
check_tower_consistency "$REF_DIR" "REF_DIR" || tower_ok=false
check_tower_consistency "$RUN_DIR" "RUN_DIR" || tower_ok=false

# Exit nonzero if the golden comparison OR either tower check failed
if $PASS && $tower_ok; then
    exit 0
else
    exit 1
fi
