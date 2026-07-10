#!/bin/bash
# compare_to_golden.sh [-v|--verbose] <run_output_dir> <reference_dir>
#
# Compares every *.out file in <reference_dir> against <run_output_dir>.
# Exact text match is required (outputs are fixed-format ASCII).
# Prints PASS or FAIL and exits nonzero on any mismatch or missing file.
# Extra *.out files in the run dir (not in reference) are also flagged.
#
# By default only summary messages are printed. Pass -v/--verbose to also
# print the full diff for each file that differs.

set -euo pipefail

usage() {
    echo "Usage: $0 [-v|--verbose] <run_output_dir> <reference_dir>" >&2
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
    exit 0
else
    echo "FAIL: differences detected between '$RUN_DIR' and '$REF_DIR'"
    exit 1
fi
