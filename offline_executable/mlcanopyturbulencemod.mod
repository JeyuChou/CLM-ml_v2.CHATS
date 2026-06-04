V34 :0x24 mlcanopyturbulencemod
25 MLCanopyTurbulenceMod.F90 S624 0
06/02/2026  09:20:36
use mlcanopyfluxestype private
use shr_kind_mod private
use clm_varctl private
use abortutils private
enduse
D 100 26 1881 48080 1880 7
D 1651 26 1881 48080 1880 7
D 1657 23 6 1 3682 3685 1 1 0 0 1
 11 3683 11 11 3683 3684
D 1660 23 6 1 3686 3689 1 1 0 0 1
 11 3687 11 11 3687 3688
D 1663 23 10 2 3690 3691 0 0 0 0 0
 0 3691 11 11 3691 3691
 0 11 3691 11 11 11
D 1666 23 10 2 3692 3693 0 0 0 0 0
 0 11 11 11 11 11
 0 3693 11 11 3693 3693
D 1669 23 10 2 3690 3694 0 0 0 0 0
 0 3691 11 11 3691 3691
 0 3693 3691 11 3693 3693
S 624 24 0 0 0 6 1 0 5012 10005 8000 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 mlcanopyturbulencemod
S 626 23 0 0 0 9 1199 624 5045 4 0 A 0 0 0 0 B 400000 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 endrun
S 628 23 0 0 0 6 642 624 5063 4 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 iulog
S 629 23 0 0 0 9 643 624 5069 4 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rslfile
S 631 23 0 0 0 9 635 624 5090 4 0 A 0 0 0 0 B 400000 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 r8
R 635 16 1 shr_kind_mod shr_kind_r8
R 642 6 2 clm_varctl iulog
R 643 6 3 clm_varctl rslfile
R 1199 14 450 abortutils endrun
S 1204 27 0 0 0 9 3643 624 11193 0 8000000 A 0 0 0 0 B 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 canopyturbulence
S 1205 27 0 0 0 6 3741 624 11210 0 8000000 A 0 0 0 0 B 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 lookuppsihatini
S 1206 27 0 0 0 9 3653 624 11226 10 8000000 A 0 0 0 0 B 0 20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 hf2008
S 1207 27 0 0 0 9 3663 624 11233 10 8000000 A 0 0 0 0 B 0 21 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 getobu
S 1208 27 0 0 0 9 3667 624 11240 10 8000000 A 0 0 0 0 B 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 obufunc
S 1209 27 0 0 0 9 3675 624 11248 10 8000000 A 0 0 0 0 B 0 23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 getbeta
S 1210 27 0 0 0 9 3680 624 11256 10 8000000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 getprsc
S 1211 27 0 0 0 9 3686 624 11264 10 8000000 A 0 0 0 0 B 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 getpsirsl
S 1212 27 0 0 0 9 3698 624 11274 10 8000000 A 0 0 0 0 B 0 26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 phim_monin_obukhov
S 1213 27 0 0 0 9 3702 624 11293 10 8000000 A 0 0 0 0 B 0 27 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 phic_monin_obukhov
S 1214 27 0 0 0 9 3706 624 11312 10 8000000 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 psim_monin_obukhov
S 1215 27 0 0 0 9 3710 624 11331 10 8000000 A 0 0 0 0 B 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 psic_monin_obukhov
S 1216 27 0 0 0 6 3714 624 11350 10 8000000 A 0 0 0 0 B 0 30 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 lookuppsihat
S 1217 27 0 0 0 9 3727 624 11363 10 8000000 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 roughnesslength
S 1218 27 0 0 0 9 3731 624 11379 10 8000000 A 0 0 0 0 B 0 32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 windprofile
S 1219 27 0 0 0 9 3736 624 11391 10 8000000 A 0 0 0 0 B 0 33 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 aerodynamicconductance
R 1880 25 11 mlcanopyfluxestype mlcanopy_type
R 1881 5 12 mlcanopyfluxestype ztop_canopy mlcanopy_type
R 1883 5 14 mlcanopyfluxestype ztop_canopy$sd mlcanopy_type
R 1884 5 15 mlcanopyfluxestype ztop_canopy$p mlcanopy_type
R 1885 5 16 mlcanopyfluxestype ztop_canopy$o mlcanopy_type
R 1887 5 18 mlcanopyfluxestype zbot_canopy mlcanopy_type
R 1889 5 20 mlcanopyfluxestype zbot_canopy$sd mlcanopy_type
R 1890 5 21 mlcanopyfluxestype zbot_canopy$p mlcanopy_type
R 1891 5 22 mlcanopyfluxestype zbot_canopy$o mlcanopy_type
R 1893 5 24 mlcanopyfluxestype lai_canopy mlcanopy_type
R 1895 5 26 mlcanopyfluxestype lai_canopy$sd mlcanopy_type
R 1896 5 27 mlcanopyfluxestype lai_canopy$p mlcanopy_type
R 1897 5 28 mlcanopyfluxestype lai_canopy$o mlcanopy_type
R 1899 5 30 mlcanopyfluxestype sai_canopy mlcanopy_type
R 1901 5 32 mlcanopyfluxestype sai_canopy$sd mlcanopy_type
R 1902 5 33 mlcanopyfluxestype sai_canopy$p mlcanopy_type
R 1903 5 34 mlcanopyfluxestype sai_canopy$o mlcanopy_type
R 1905 5 36 mlcanopyfluxestype root_biomass_canopy mlcanopy_type
R 1907 5 38 mlcanopyfluxestype root_biomass_canopy$sd mlcanopy_type
R 1908 5 39 mlcanopyfluxestype root_biomass_canopy$p mlcanopy_type
R 1909 5 40 mlcanopyfluxestype root_biomass_canopy$o mlcanopy_type
R 1911 5 42 mlcanopyfluxestype pbeta_lai_canopy mlcanopy_type
R 1914 5 45 mlcanopyfluxestype pbeta_lai_canopy$sd mlcanopy_type
R 1915 5 46 mlcanopyfluxestype pbeta_lai_canopy$p mlcanopy_type
R 1916 5 47 mlcanopyfluxestype pbeta_lai_canopy$o mlcanopy_type
R 1918 5 49 mlcanopyfluxestype pbeta_sai_canopy mlcanopy_type
R 1921 5 52 mlcanopyfluxestype pbeta_sai_canopy$sd mlcanopy_type
R 1922 5 53 mlcanopyfluxestype pbeta_sai_canopy$p mlcanopy_type
R 1923 5 54 mlcanopyfluxestype pbeta_sai_canopy$o mlcanopy_type
R 1925 5 56 mlcanopyfluxestype zref_forcing mlcanopy_type
R 1927 5 58 mlcanopyfluxestype zref_forcing$sd mlcanopy_type
R 1928 5 59 mlcanopyfluxestype zref_forcing$p mlcanopy_type
R 1929 5 60 mlcanopyfluxestype zref_forcing$o mlcanopy_type
R 1931 5 62 mlcanopyfluxestype tref_forcing mlcanopy_type
R 1933 5 64 mlcanopyfluxestype tref_forcing$sd mlcanopy_type
R 1934 5 65 mlcanopyfluxestype tref_forcing$p mlcanopy_type
R 1935 5 66 mlcanopyfluxestype tref_forcing$o mlcanopy_type
R 1937 5 68 mlcanopyfluxestype tref_bef_forcing mlcanopy_type
R 1939 5 70 mlcanopyfluxestype tref_bef_forcing$sd mlcanopy_type
R 1940 5 71 mlcanopyfluxestype tref_bef_forcing$p mlcanopy_type
R 1941 5 72 mlcanopyfluxestype tref_bef_forcing$o mlcanopy_type
R 1943 5 74 mlcanopyfluxestype tref_cur_forcing mlcanopy_type
R 1945 5 76 mlcanopyfluxestype tref_cur_forcing$sd mlcanopy_type
R 1946 5 77 mlcanopyfluxestype tref_cur_forcing$p mlcanopy_type
R 1947 5 78 mlcanopyfluxestype tref_cur_forcing$o mlcanopy_type
R 1949 5 80 mlcanopyfluxestype tref_next_forcing mlcanopy_type
R 1951 5 82 mlcanopyfluxestype tref_next_forcing$sd mlcanopy_type
R 1952 5 83 mlcanopyfluxestype tref_next_forcing$p mlcanopy_type
R 1953 5 84 mlcanopyfluxestype tref_next_forcing$o mlcanopy_type
R 1955 5 86 mlcanopyfluxestype qref_forcing mlcanopy_type
R 1957 5 88 mlcanopyfluxestype qref_forcing$sd mlcanopy_type
R 1958 5 89 mlcanopyfluxestype qref_forcing$p mlcanopy_type
R 1959 5 90 mlcanopyfluxestype qref_forcing$o mlcanopy_type
R 1961 5 92 mlcanopyfluxestype qref_bef_forcing mlcanopy_type
R 1963 5 94 mlcanopyfluxestype qref_bef_forcing$sd mlcanopy_type
R 1964 5 95 mlcanopyfluxestype qref_bef_forcing$p mlcanopy_type
R 1965 5 96 mlcanopyfluxestype qref_bef_forcing$o mlcanopy_type
R 1967 5 98 mlcanopyfluxestype qref_cur_forcing mlcanopy_type
R 1969 5 100 mlcanopyfluxestype qref_cur_forcing$sd mlcanopy_type
R 1970 5 101 mlcanopyfluxestype qref_cur_forcing$p mlcanopy_type
R 1971 5 102 mlcanopyfluxestype qref_cur_forcing$o mlcanopy_type
R 1973 5 104 mlcanopyfluxestype qref_next_forcing mlcanopy_type
R 1975 5 106 mlcanopyfluxestype qref_next_forcing$sd mlcanopy_type
R 1976 5 107 mlcanopyfluxestype qref_next_forcing$p mlcanopy_type
R 1977 5 108 mlcanopyfluxestype qref_next_forcing$o mlcanopy_type
R 1979 5 110 mlcanopyfluxestype uref_forcing mlcanopy_type
R 1981 5 112 mlcanopyfluxestype uref_forcing$sd mlcanopy_type
R 1982 5 113 mlcanopyfluxestype uref_forcing$p mlcanopy_type
R 1983 5 114 mlcanopyfluxestype uref_forcing$o mlcanopy_type
R 1985 5 116 mlcanopyfluxestype uref_bef_forcing mlcanopy_type
R 1987 5 118 mlcanopyfluxestype uref_bef_forcing$sd mlcanopy_type
R 1988 5 119 mlcanopyfluxestype uref_bef_forcing$p mlcanopy_type
R 1989 5 120 mlcanopyfluxestype uref_bef_forcing$o mlcanopy_type
R 1991 5 122 mlcanopyfluxestype uref_cur_forcing mlcanopy_type
R 1993 5 124 mlcanopyfluxestype uref_cur_forcing$sd mlcanopy_type
R 1994 5 125 mlcanopyfluxestype uref_cur_forcing$p mlcanopy_type
R 1995 5 126 mlcanopyfluxestype uref_cur_forcing$o mlcanopy_type
R 1997 5 128 mlcanopyfluxestype uref_next_forcing mlcanopy_type
R 1999 5 130 mlcanopyfluxestype uref_next_forcing$sd mlcanopy_type
R 2000 5 131 mlcanopyfluxestype uref_next_forcing$p mlcanopy_type
R 2001 5 132 mlcanopyfluxestype uref_next_forcing$o mlcanopy_type
R 2003 5 134 mlcanopyfluxestype pref_forcing mlcanopy_type
R 2005 5 136 mlcanopyfluxestype pref_forcing$sd mlcanopy_type
R 2006 5 137 mlcanopyfluxestype pref_forcing$p mlcanopy_type
R 2007 5 138 mlcanopyfluxestype pref_forcing$o mlcanopy_type
R 2009 5 140 mlcanopyfluxestype pref_bef_forcing mlcanopy_type
R 2011 5 142 mlcanopyfluxestype pref_bef_forcing$sd mlcanopy_type
R 2012 5 143 mlcanopyfluxestype pref_bef_forcing$p mlcanopy_type
R 2013 5 144 mlcanopyfluxestype pref_bef_forcing$o mlcanopy_type
R 2015 5 146 mlcanopyfluxestype pref_cur_forcing mlcanopy_type
R 2017 5 148 mlcanopyfluxestype pref_cur_forcing$sd mlcanopy_type
R 2018 5 149 mlcanopyfluxestype pref_cur_forcing$p mlcanopy_type
R 2019 5 150 mlcanopyfluxestype pref_cur_forcing$o mlcanopy_type
R 2021 5 152 mlcanopyfluxestype pref_next_forcing mlcanopy_type
R 2023 5 154 mlcanopyfluxestype pref_next_forcing$sd mlcanopy_type
R 2024 5 155 mlcanopyfluxestype pref_next_forcing$p mlcanopy_type
R 2025 5 156 mlcanopyfluxestype pref_next_forcing$o mlcanopy_type
R 2027 5 158 mlcanopyfluxestype co2ref_forcing mlcanopy_type
R 2029 5 160 mlcanopyfluxestype co2ref_forcing$sd mlcanopy_type
R 2030 5 161 mlcanopyfluxestype co2ref_forcing$p mlcanopy_type
R 2031 5 162 mlcanopyfluxestype co2ref_forcing$o mlcanopy_type
R 2033 5 164 mlcanopyfluxestype co2ref_bef_forcing mlcanopy_type
R 2035 5 166 mlcanopyfluxestype co2ref_bef_forcing$sd mlcanopy_type
R 2036 5 167 mlcanopyfluxestype co2ref_bef_forcing$p mlcanopy_type
R 2037 5 168 mlcanopyfluxestype co2ref_bef_forcing$o mlcanopy_type
R 2039 5 170 mlcanopyfluxestype co2ref_cur_forcing mlcanopy_type
R 2041 5 172 mlcanopyfluxestype co2ref_cur_forcing$sd mlcanopy_type
R 2042 5 173 mlcanopyfluxestype co2ref_cur_forcing$p mlcanopy_type
R 2043 5 174 mlcanopyfluxestype co2ref_cur_forcing$o mlcanopy_type
R 2045 5 176 mlcanopyfluxestype co2ref_next_forcing mlcanopy_type
R 2047 5 178 mlcanopyfluxestype co2ref_next_forcing$sd mlcanopy_type
R 2048 5 179 mlcanopyfluxestype co2ref_next_forcing$p mlcanopy_type
R 2049 5 180 mlcanopyfluxestype co2ref_next_forcing$o mlcanopy_type
R 2051 5 182 mlcanopyfluxestype o2ref_forcing mlcanopy_type
R 2053 5 184 mlcanopyfluxestype o2ref_forcing$sd mlcanopy_type
R 2054 5 185 mlcanopyfluxestype o2ref_forcing$p mlcanopy_type
R 2055 5 186 mlcanopyfluxestype o2ref_forcing$o mlcanopy_type
R 2057 5 188 mlcanopyfluxestype swskyb_forcing mlcanopy_type
R 2060 5 191 mlcanopyfluxestype swskyb_forcing$sd mlcanopy_type
R 2061 5 192 mlcanopyfluxestype swskyb_forcing$p mlcanopy_type
R 2062 5 193 mlcanopyfluxestype swskyb_forcing$o mlcanopy_type
R 2064 5 195 mlcanopyfluxestype swskyb_bef_forcing mlcanopy_type
R 2067 5 198 mlcanopyfluxestype swskyb_bef_forcing$sd mlcanopy_type
R 2068 5 199 mlcanopyfluxestype swskyb_bef_forcing$p mlcanopy_type
R 2069 5 200 mlcanopyfluxestype swskyb_bef_forcing$o mlcanopy_type
R 2071 5 202 mlcanopyfluxestype swskyb_cur_forcing mlcanopy_type
R 2074 5 205 mlcanopyfluxestype swskyb_cur_forcing$sd mlcanopy_type
R 2075 5 206 mlcanopyfluxestype swskyb_cur_forcing$p mlcanopy_type
R 2076 5 207 mlcanopyfluxestype swskyb_cur_forcing$o mlcanopy_type
R 2078 5 209 mlcanopyfluxestype swskyb_next_forcing mlcanopy_type
R 2081 5 212 mlcanopyfluxestype swskyb_next_forcing$sd mlcanopy_type
R 2082 5 213 mlcanopyfluxestype swskyb_next_forcing$p mlcanopy_type
R 2083 5 214 mlcanopyfluxestype swskyb_next_forcing$o mlcanopy_type
R 2085 5 216 mlcanopyfluxestype swskyd_forcing mlcanopy_type
R 2088 5 219 mlcanopyfluxestype swskyd_forcing$sd mlcanopy_type
R 2089 5 220 mlcanopyfluxestype swskyd_forcing$p mlcanopy_type
R 2090 5 221 mlcanopyfluxestype swskyd_forcing$o mlcanopy_type
R 2092 5 223 mlcanopyfluxestype swskyd_bef_forcing mlcanopy_type
R 2095 5 226 mlcanopyfluxestype swskyd_bef_forcing$sd mlcanopy_type
R 2096 5 227 mlcanopyfluxestype swskyd_bef_forcing$p mlcanopy_type
R 2097 5 228 mlcanopyfluxestype swskyd_bef_forcing$o mlcanopy_type
R 2099 5 230 mlcanopyfluxestype swskyd_cur_forcing mlcanopy_type
R 2102 5 233 mlcanopyfluxestype swskyd_cur_forcing$sd mlcanopy_type
R 2103 5 234 mlcanopyfluxestype swskyd_cur_forcing$p mlcanopy_type
R 2104 5 235 mlcanopyfluxestype swskyd_cur_forcing$o mlcanopy_type
R 2106 5 237 mlcanopyfluxestype swskyd_next_forcing mlcanopy_type
R 2109 5 240 mlcanopyfluxestype swskyd_next_forcing$sd mlcanopy_type
R 2110 5 241 mlcanopyfluxestype swskyd_next_forcing$p mlcanopy_type
R 2111 5 242 mlcanopyfluxestype swskyd_next_forcing$o mlcanopy_type
R 2113 5 244 mlcanopyfluxestype lwsky_forcing mlcanopy_type
R 2115 5 246 mlcanopyfluxestype lwsky_forcing$sd mlcanopy_type
R 2116 5 247 mlcanopyfluxestype lwsky_forcing$p mlcanopy_type
R 2117 5 248 mlcanopyfluxestype lwsky_forcing$o mlcanopy_type
R 2119 5 250 mlcanopyfluxestype lwsky_bef_forcing mlcanopy_type
R 2121 5 252 mlcanopyfluxestype lwsky_bef_forcing$sd mlcanopy_type
R 2122 5 253 mlcanopyfluxestype lwsky_bef_forcing$p mlcanopy_type
R 2123 5 254 mlcanopyfluxestype lwsky_bef_forcing$o mlcanopy_type
R 2125 5 256 mlcanopyfluxestype lwsky_cur_forcing mlcanopy_type
R 2127 5 258 mlcanopyfluxestype lwsky_cur_forcing$sd mlcanopy_type
R 2128 5 259 mlcanopyfluxestype lwsky_cur_forcing$p mlcanopy_type
R 2129 5 260 mlcanopyfluxestype lwsky_cur_forcing$o mlcanopy_type
R 2131 5 262 mlcanopyfluxestype lwsky_next_forcing mlcanopy_type
R 2133 5 264 mlcanopyfluxestype lwsky_next_forcing$sd mlcanopy_type
R 2134 5 265 mlcanopyfluxestype lwsky_next_forcing$p mlcanopy_type
R 2135 5 266 mlcanopyfluxestype lwsky_next_forcing$o mlcanopy_type
R 2137 5 268 mlcanopyfluxestype qflx_rain_forcing mlcanopy_type
R 2139 5 270 mlcanopyfluxestype qflx_rain_forcing$sd mlcanopy_type
R 2140 5 271 mlcanopyfluxestype qflx_rain_forcing$p mlcanopy_type
R 2141 5 272 mlcanopyfluxestype qflx_rain_forcing$o mlcanopy_type
R 2143 5 274 mlcanopyfluxestype qflx_snow_forcing mlcanopy_type
R 2145 5 276 mlcanopyfluxestype qflx_snow_forcing$sd mlcanopy_type
R 2146 5 277 mlcanopyfluxestype qflx_snow_forcing$p mlcanopy_type
R 2147 5 278 mlcanopyfluxestype qflx_snow_forcing$o mlcanopy_type
R 2149 5 280 mlcanopyfluxestype tacclim_forcing mlcanopy_type
R 2151 5 282 mlcanopyfluxestype tacclim_forcing$sd mlcanopy_type
R 2152 5 283 mlcanopyfluxestype tacclim_forcing$p mlcanopy_type
R 2153 5 284 mlcanopyfluxestype tacclim_forcing$o mlcanopy_type
R 2155 5 286 mlcanopyfluxestype eref_forcing mlcanopy_type
R 2157 5 288 mlcanopyfluxestype eref_forcing$sd mlcanopy_type
R 2158 5 289 mlcanopyfluxestype eref_forcing$p mlcanopy_type
R 2159 5 290 mlcanopyfluxestype eref_forcing$o mlcanopy_type
R 2161 5 292 mlcanopyfluxestype thref_forcing mlcanopy_type
R 2163 5 294 mlcanopyfluxestype thref_forcing$sd mlcanopy_type
R 2164 5 295 mlcanopyfluxestype thref_forcing$p mlcanopy_type
R 2165 5 296 mlcanopyfluxestype thref_forcing$o mlcanopy_type
R 2167 5 298 mlcanopyfluxestype thvref_forcing mlcanopy_type
R 2169 5 300 mlcanopyfluxestype thvref_forcing$sd mlcanopy_type
R 2170 5 301 mlcanopyfluxestype thvref_forcing$p mlcanopy_type
R 2171 5 302 mlcanopyfluxestype thvref_forcing$o mlcanopy_type
R 2173 5 304 mlcanopyfluxestype rhoair_forcing mlcanopy_type
R 2175 5 306 mlcanopyfluxestype rhoair_forcing$sd mlcanopy_type
R 2176 5 307 mlcanopyfluxestype rhoair_forcing$p mlcanopy_type
R 2177 5 308 mlcanopyfluxestype rhoair_forcing$o mlcanopy_type
R 2179 5 310 mlcanopyfluxestype rhomol_forcing mlcanopy_type
R 2181 5 312 mlcanopyfluxestype rhomol_forcing$sd mlcanopy_type
R 2182 5 313 mlcanopyfluxestype rhomol_forcing$p mlcanopy_type
R 2183 5 314 mlcanopyfluxestype rhomol_forcing$o mlcanopy_type
R 2185 5 316 mlcanopyfluxestype mmair_forcing mlcanopy_type
R 2187 5 318 mlcanopyfluxestype mmair_forcing$sd mlcanopy_type
R 2188 5 319 mlcanopyfluxestype mmair_forcing$p mlcanopy_type
R 2189 5 320 mlcanopyfluxestype mmair_forcing$o mlcanopy_type
R 2191 5 322 mlcanopyfluxestype cpair_forcing mlcanopy_type
R 2193 5 324 mlcanopyfluxestype cpair_forcing$sd mlcanopy_type
R 2194 5 325 mlcanopyfluxestype cpair_forcing$p mlcanopy_type
R 2195 5 326 mlcanopyfluxestype cpair_forcing$o mlcanopy_type
R 2197 5 328 mlcanopyfluxestype solar_zen_forcing mlcanopy_type
R 2199 5 330 mlcanopyfluxestype solar_zen_forcing$sd mlcanopy_type
R 2200 5 331 mlcanopyfluxestype solar_zen_forcing$p mlcanopy_type
R 2201 5 332 mlcanopyfluxestype solar_zen_forcing$o mlcanopy_type
R 2203 5 334 mlcanopyfluxestype swveg_canopy mlcanopy_type
R 2206 5 337 mlcanopyfluxestype swveg_canopy$sd mlcanopy_type
R 2207 5 338 mlcanopyfluxestype swveg_canopy$p mlcanopy_type
R 2208 5 339 mlcanopyfluxestype swveg_canopy$o mlcanopy_type
R 2210 5 341 mlcanopyfluxestype swvegsun_canopy mlcanopy_type
R 2213 5 344 mlcanopyfluxestype swvegsun_canopy$sd mlcanopy_type
R 2214 5 345 mlcanopyfluxestype swvegsun_canopy$p mlcanopy_type
R 2215 5 346 mlcanopyfluxestype swvegsun_canopy$o mlcanopy_type
R 2217 5 348 mlcanopyfluxestype swvegsha_canopy mlcanopy_type
R 2220 5 351 mlcanopyfluxestype swvegsha_canopy$sd mlcanopy_type
R 2221 5 352 mlcanopyfluxestype swvegsha_canopy$p mlcanopy_type
R 2222 5 353 mlcanopyfluxestype swvegsha_canopy$o mlcanopy_type
R 2224 5 355 mlcanopyfluxestype lwveg_canopy mlcanopy_type
R 2226 5 357 mlcanopyfluxestype lwveg_canopy$sd mlcanopy_type
R 2227 5 358 mlcanopyfluxestype lwveg_canopy$p mlcanopy_type
R 2228 5 359 mlcanopyfluxestype lwveg_canopy$o mlcanopy_type
R 2230 5 361 mlcanopyfluxestype lwvegsun_canopy mlcanopy_type
R 2232 5 363 mlcanopyfluxestype lwvegsun_canopy$sd mlcanopy_type
R 2233 5 364 mlcanopyfluxestype lwvegsun_canopy$p mlcanopy_type
R 2234 5 365 mlcanopyfluxestype lwvegsun_canopy$o mlcanopy_type
R 2236 5 367 mlcanopyfluxestype lwvegsha_canopy mlcanopy_type
R 2238 5 369 mlcanopyfluxestype lwvegsha_canopy$sd mlcanopy_type
R 2239 5 370 mlcanopyfluxestype lwvegsha_canopy$p mlcanopy_type
R 2240 5 371 mlcanopyfluxestype lwvegsha_canopy$o mlcanopy_type
R 2242 5 373 mlcanopyfluxestype shveg_canopy mlcanopy_type
R 2244 5 375 mlcanopyfluxestype shveg_canopy$sd mlcanopy_type
R 2245 5 376 mlcanopyfluxestype shveg_canopy$p mlcanopy_type
R 2246 5 377 mlcanopyfluxestype shveg_canopy$o mlcanopy_type
R 2248 5 379 mlcanopyfluxestype shvegsun_canopy mlcanopy_type
R 2250 5 381 mlcanopyfluxestype shvegsun_canopy$sd mlcanopy_type
R 2251 5 382 mlcanopyfluxestype shvegsun_canopy$p mlcanopy_type
R 2252 5 383 mlcanopyfluxestype shvegsun_canopy$o mlcanopy_type
R 2254 5 385 mlcanopyfluxestype shvegsha_canopy mlcanopy_type
R 2256 5 387 mlcanopyfluxestype shvegsha_canopy$sd mlcanopy_type
R 2257 5 388 mlcanopyfluxestype shvegsha_canopy$p mlcanopy_type
R 2258 5 389 mlcanopyfluxestype shvegsha_canopy$o mlcanopy_type
R 2260 5 391 mlcanopyfluxestype lhveg_canopy mlcanopy_type
R 2262 5 393 mlcanopyfluxestype lhveg_canopy$sd mlcanopy_type
R 2263 5 394 mlcanopyfluxestype lhveg_canopy$p mlcanopy_type
R 2264 5 395 mlcanopyfluxestype lhveg_canopy$o mlcanopy_type
R 2266 5 397 mlcanopyfluxestype lhvegsun_canopy mlcanopy_type
R 2268 5 399 mlcanopyfluxestype lhvegsun_canopy$sd mlcanopy_type
R 2269 5 400 mlcanopyfluxestype lhvegsun_canopy$p mlcanopy_type
R 2270 5 401 mlcanopyfluxestype lhvegsun_canopy$o mlcanopy_type
R 2272 5 403 mlcanopyfluxestype lhvegsha_canopy mlcanopy_type
R 2274 5 405 mlcanopyfluxestype lhvegsha_canopy$sd mlcanopy_type
R 2275 5 406 mlcanopyfluxestype lhvegsha_canopy$p mlcanopy_type
R 2276 5 407 mlcanopyfluxestype lhvegsha_canopy$o mlcanopy_type
R 2278 5 409 mlcanopyfluxestype etveg_canopy mlcanopy_type
R 2280 5 411 mlcanopyfluxestype etveg_canopy$sd mlcanopy_type
R 2281 5 412 mlcanopyfluxestype etveg_canopy$p mlcanopy_type
R 2282 5 413 mlcanopyfluxestype etveg_canopy$o mlcanopy_type
R 2284 5 415 mlcanopyfluxestype etvegsun_canopy mlcanopy_type
R 2286 5 417 mlcanopyfluxestype etvegsun_canopy$sd mlcanopy_type
R 2287 5 418 mlcanopyfluxestype etvegsun_canopy$p mlcanopy_type
R 2288 5 419 mlcanopyfluxestype etvegsun_canopy$o mlcanopy_type
R 2290 5 421 mlcanopyfluxestype etvegsha_canopy mlcanopy_type
R 2292 5 423 mlcanopyfluxestype etvegsha_canopy$sd mlcanopy_type
R 2293 5 424 mlcanopyfluxestype etvegsha_canopy$p mlcanopy_type
R 2294 5 425 mlcanopyfluxestype etvegsha_canopy$o mlcanopy_type
R 2296 5 427 mlcanopyfluxestype trveg_canopy mlcanopy_type
R 2298 5 429 mlcanopyfluxestype trveg_canopy$sd mlcanopy_type
R 2299 5 430 mlcanopyfluxestype trveg_canopy$p mlcanopy_type
R 2300 5 431 mlcanopyfluxestype trveg_canopy$o mlcanopy_type
R 2302 5 433 mlcanopyfluxestype evveg_canopy mlcanopy_type
R 2304 5 435 mlcanopyfluxestype evveg_canopy$sd mlcanopy_type
R 2305 5 436 mlcanopyfluxestype evveg_canopy$p mlcanopy_type
R 2306 5 437 mlcanopyfluxestype evveg_canopy$o mlcanopy_type
R 2308 5 439 mlcanopyfluxestype gppveg_canopy mlcanopy_type
R 2310 5 441 mlcanopyfluxestype gppveg_canopy$sd mlcanopy_type
R 2311 5 442 mlcanopyfluxestype gppveg_canopy$p mlcanopy_type
R 2312 5 443 mlcanopyfluxestype gppveg_canopy$o mlcanopy_type
R 2314 5 445 mlcanopyfluxestype gppvegsun_canopy mlcanopy_type
R 2316 5 447 mlcanopyfluxestype gppvegsun_canopy$sd mlcanopy_type
R 2317 5 448 mlcanopyfluxestype gppvegsun_canopy$p mlcanopy_type
R 2318 5 449 mlcanopyfluxestype gppvegsun_canopy$o mlcanopy_type
R 2320 5 451 mlcanopyfluxestype gppvegsha_canopy mlcanopy_type
R 2322 5 453 mlcanopyfluxestype gppvegsha_canopy$sd mlcanopy_type
R 2323 5 454 mlcanopyfluxestype gppvegsha_canopy$p mlcanopy_type
R 2324 5 455 mlcanopyfluxestype gppvegsha_canopy$o mlcanopy_type
R 2326 5 457 mlcanopyfluxestype vcmax25veg_canopy mlcanopy_type
R 2328 5 459 mlcanopyfluxestype vcmax25veg_canopy$sd mlcanopy_type
R 2329 5 460 mlcanopyfluxestype vcmax25veg_canopy$p mlcanopy_type
R 2330 5 461 mlcanopyfluxestype vcmax25veg_canopy$o mlcanopy_type
R 2332 5 463 mlcanopyfluxestype vcmax25sun_canopy mlcanopy_type
R 2334 5 465 mlcanopyfluxestype vcmax25sun_canopy$sd mlcanopy_type
R 2335 5 466 mlcanopyfluxestype vcmax25sun_canopy$p mlcanopy_type
R 2336 5 467 mlcanopyfluxestype vcmax25sun_canopy$o mlcanopy_type
R 2338 5 469 mlcanopyfluxestype vcmax25sha_canopy mlcanopy_type
R 2340 5 471 mlcanopyfluxestype vcmax25sha_canopy$sd mlcanopy_type
R 2341 5 472 mlcanopyfluxestype vcmax25sha_canopy$p mlcanopy_type
R 2342 5 473 mlcanopyfluxestype vcmax25sha_canopy$o mlcanopy_type
R 2344 5 475 mlcanopyfluxestype gsveg_canopy mlcanopy_type
R 2346 5 477 mlcanopyfluxestype gsveg_canopy$sd mlcanopy_type
R 2347 5 478 mlcanopyfluxestype gsveg_canopy$p mlcanopy_type
R 2348 5 479 mlcanopyfluxestype gsveg_canopy$o mlcanopy_type
R 2350 5 481 mlcanopyfluxestype gsvegsun_canopy mlcanopy_type
R 2352 5 483 mlcanopyfluxestype gsvegsun_canopy$sd mlcanopy_type
R 2353 5 484 mlcanopyfluxestype gsvegsun_canopy$p mlcanopy_type
R 2354 5 485 mlcanopyfluxestype gsvegsun_canopy$o mlcanopy_type
R 2356 5 487 mlcanopyfluxestype gsvegsha_canopy mlcanopy_type
R 2358 5 489 mlcanopyfluxestype gsvegsha_canopy$sd mlcanopy_type
R 2359 5 490 mlcanopyfluxestype gsvegsha_canopy$p mlcanopy_type
R 2360 5 491 mlcanopyfluxestype gsvegsha_canopy$o mlcanopy_type
R 2362 5 493 mlcanopyfluxestype windveg_canopy mlcanopy_type
R 2364 5 495 mlcanopyfluxestype windveg_canopy$sd mlcanopy_type
R 2365 5 496 mlcanopyfluxestype windveg_canopy$p mlcanopy_type
R 2366 5 497 mlcanopyfluxestype windveg_canopy$o mlcanopy_type
R 2368 5 499 mlcanopyfluxestype windvegsun_canopy mlcanopy_type
R 2370 5 501 mlcanopyfluxestype windvegsun_canopy$sd mlcanopy_type
R 2371 5 502 mlcanopyfluxestype windvegsun_canopy$p mlcanopy_type
R 2372 5 503 mlcanopyfluxestype windvegsun_canopy$o mlcanopy_type
R 2374 5 505 mlcanopyfluxestype windvegsha_canopy mlcanopy_type
R 2376 5 507 mlcanopyfluxestype windvegsha_canopy$sd mlcanopy_type
R 2377 5 508 mlcanopyfluxestype windvegsha_canopy$p mlcanopy_type
R 2378 5 509 mlcanopyfluxestype windvegsha_canopy$o mlcanopy_type
R 2380 5 511 mlcanopyfluxestype tlveg_canopy mlcanopy_type
R 2382 5 513 mlcanopyfluxestype tlveg_canopy$sd mlcanopy_type
R 2383 5 514 mlcanopyfluxestype tlveg_canopy$p mlcanopy_type
R 2384 5 515 mlcanopyfluxestype tlveg_canopy$o mlcanopy_type
R 2386 5 517 mlcanopyfluxestype tlvegsun_canopy mlcanopy_type
R 2388 5 519 mlcanopyfluxestype tlvegsun_canopy$sd mlcanopy_type
R 2389 5 520 mlcanopyfluxestype tlvegsun_canopy$p mlcanopy_type
R 2390 5 521 mlcanopyfluxestype tlvegsun_canopy$o mlcanopy_type
R 2392 5 523 mlcanopyfluxestype tlvegsha_canopy mlcanopy_type
R 2394 5 525 mlcanopyfluxestype tlvegsha_canopy$sd mlcanopy_type
R 2395 5 526 mlcanopyfluxestype tlvegsha_canopy$p mlcanopy_type
R 2396 5 527 mlcanopyfluxestype tlvegsha_canopy$o mlcanopy_type
R 2398 5 529 mlcanopyfluxestype taveg_canopy mlcanopy_type
R 2400 5 531 mlcanopyfluxestype taveg_canopy$sd mlcanopy_type
R 2401 5 532 mlcanopyfluxestype taveg_canopy$p mlcanopy_type
R 2402 5 533 mlcanopyfluxestype taveg_canopy$o mlcanopy_type
R 2404 5 535 mlcanopyfluxestype tavegsun_canopy mlcanopy_type
R 2406 5 537 mlcanopyfluxestype tavegsun_canopy$sd mlcanopy_type
R 2407 5 538 mlcanopyfluxestype tavegsun_canopy$p mlcanopy_type
R 2408 5 539 mlcanopyfluxestype tavegsun_canopy$o mlcanopy_type
R 2410 5 541 mlcanopyfluxestype tavegsha_canopy mlcanopy_type
R 2412 5 543 mlcanopyfluxestype tavegsha_canopy$sd mlcanopy_type
R 2413 5 544 mlcanopyfluxestype tavegsha_canopy$p mlcanopy_type
R 2414 5 545 mlcanopyfluxestype tavegsha_canopy$o mlcanopy_type
R 2416 5 547 mlcanopyfluxestype laisun_canopy mlcanopy_type
R 2418 5 549 mlcanopyfluxestype laisun_canopy$sd mlcanopy_type
R 2419 5 550 mlcanopyfluxestype laisun_canopy$p mlcanopy_type
R 2420 5 551 mlcanopyfluxestype laisun_canopy$o mlcanopy_type
R 2422 5 553 mlcanopyfluxestype laisha_canopy mlcanopy_type
R 2424 5 555 mlcanopyfluxestype laisha_canopy$sd mlcanopy_type
R 2425 5 556 mlcanopyfluxestype laisha_canopy$p mlcanopy_type
R 2426 5 557 mlcanopyfluxestype laisha_canopy$o mlcanopy_type
R 2428 5 559 mlcanopyfluxestype albcan_canopy mlcanopy_type
R 2431 5 562 mlcanopyfluxestype albcan_canopy$sd mlcanopy_type
R 2432 5 563 mlcanopyfluxestype albcan_canopy$p mlcanopy_type
R 2433 5 564 mlcanopyfluxestype albcan_canopy$o mlcanopy_type
R 2435 5 566 mlcanopyfluxestype lwup_canopy mlcanopy_type
R 2437 5 568 mlcanopyfluxestype lwup_canopy$sd mlcanopy_type
R 2438 5 569 mlcanopyfluxestype lwup_canopy$p mlcanopy_type
R 2439 5 570 mlcanopyfluxestype lwup_canopy$o mlcanopy_type
R 2441 5 572 mlcanopyfluxestype rnet_canopy mlcanopy_type
R 2443 5 574 mlcanopyfluxestype rnet_canopy$sd mlcanopy_type
R 2444 5 575 mlcanopyfluxestype rnet_canopy$p mlcanopy_type
R 2445 5 576 mlcanopyfluxestype rnet_canopy$o mlcanopy_type
R 2447 5 578 mlcanopyfluxestype shflx_canopy mlcanopy_type
R 2449 5 580 mlcanopyfluxestype shflx_canopy$sd mlcanopy_type
R 2450 5 581 mlcanopyfluxestype shflx_canopy$p mlcanopy_type
R 2451 5 582 mlcanopyfluxestype shflx_canopy$o mlcanopy_type
R 2453 5 584 mlcanopyfluxestype lhflx_canopy mlcanopy_type
R 2455 5 586 mlcanopyfluxestype lhflx_canopy$sd mlcanopy_type
R 2456 5 587 mlcanopyfluxestype lhflx_canopy$p mlcanopy_type
R 2457 5 588 mlcanopyfluxestype lhflx_canopy$o mlcanopy_type
R 2459 5 590 mlcanopyfluxestype etflx_canopy mlcanopy_type
R 2461 5 592 mlcanopyfluxestype etflx_canopy$sd mlcanopy_type
R 2462 5 593 mlcanopyfluxestype etflx_canopy$p mlcanopy_type
R 2463 5 594 mlcanopyfluxestype etflx_canopy$o mlcanopy_type
R 2465 5 596 mlcanopyfluxestype stflx_air_canopy mlcanopy_type
R 2467 5 598 mlcanopyfluxestype stflx_air_canopy$sd mlcanopy_type
R 2468 5 599 mlcanopyfluxestype stflx_air_canopy$p mlcanopy_type
R 2469 5 600 mlcanopyfluxestype stflx_air_canopy$o mlcanopy_type
R 2471 5 602 mlcanopyfluxestype stflx_veg_canopy mlcanopy_type
R 2473 5 604 mlcanopyfluxestype stflx_veg_canopy$sd mlcanopy_type
R 2474 5 605 mlcanopyfluxestype stflx_veg_canopy$p mlcanopy_type
R 2475 5 606 mlcanopyfluxestype stflx_veg_canopy$o mlcanopy_type
R 2477 5 608 mlcanopyfluxestype ustar_canopy mlcanopy_type
R 2479 5 610 mlcanopyfluxestype ustar_canopy$sd mlcanopy_type
R 2480 5 611 mlcanopyfluxestype ustar_canopy$p mlcanopy_type
R 2481 5 612 mlcanopyfluxestype ustar_canopy$o mlcanopy_type
R 2483 5 614 mlcanopyfluxestype gac_to_hc_canopy mlcanopy_type
R 2485 5 616 mlcanopyfluxestype gac_to_hc_canopy$sd mlcanopy_type
R 2486 5 617 mlcanopyfluxestype gac_to_hc_canopy$p mlcanopy_type
R 2487 5 618 mlcanopyfluxestype gac_to_hc_canopy$o mlcanopy_type
R 2489 5 620 mlcanopyfluxestype qflx_intr_canopy mlcanopy_type
R 2491 5 622 mlcanopyfluxestype qflx_intr_canopy$sd mlcanopy_type
R 2492 5 623 mlcanopyfluxestype qflx_intr_canopy$p mlcanopy_type
R 2493 5 624 mlcanopyfluxestype qflx_intr_canopy$o mlcanopy_type
R 2495 5 626 mlcanopyfluxestype qflx_tflrain_canopy mlcanopy_type
R 2497 5 628 mlcanopyfluxestype qflx_tflrain_canopy$sd mlcanopy_type
R 2498 5 629 mlcanopyfluxestype qflx_tflrain_canopy$p mlcanopy_type
R 2499 5 630 mlcanopyfluxestype qflx_tflrain_canopy$o mlcanopy_type
R 2501 5 632 mlcanopyfluxestype qflx_tflsnow_canopy mlcanopy_type
R 2503 5 634 mlcanopyfluxestype qflx_tflsnow_canopy$sd mlcanopy_type
R 2504 5 635 mlcanopyfluxestype qflx_tflsnow_canopy$p mlcanopy_type
R 2505 5 636 mlcanopyfluxestype qflx_tflsnow_canopy$o mlcanopy_type
R 2507 5 638 mlcanopyfluxestype uaf_canopy mlcanopy_type
R 2509 5 640 mlcanopyfluxestype uaf_canopy$sd mlcanopy_type
R 2510 5 641 mlcanopyfluxestype uaf_canopy$p mlcanopy_type
R 2511 5 642 mlcanopyfluxestype uaf_canopy$o mlcanopy_type
R 2513 5 644 mlcanopyfluxestype taf_canopy mlcanopy_type
R 2515 5 646 mlcanopyfluxestype taf_canopy$sd mlcanopy_type
R 2516 5 647 mlcanopyfluxestype taf_canopy$p mlcanopy_type
R 2517 5 648 mlcanopyfluxestype taf_canopy$o mlcanopy_type
R 2519 5 650 mlcanopyfluxestype qaf_canopy mlcanopy_type
R 2521 5 652 mlcanopyfluxestype qaf_canopy$sd mlcanopy_type
R 2522 5 653 mlcanopyfluxestype qaf_canopy$p mlcanopy_type
R 2523 5 654 mlcanopyfluxestype qaf_canopy$o mlcanopy_type
R 2525 5 656 mlcanopyfluxestype fracminlwp_canopy mlcanopy_type
R 2527 5 658 mlcanopyfluxestype fracminlwp_canopy$sd mlcanopy_type
R 2528 5 659 mlcanopyfluxestype fracminlwp_canopy$p mlcanopy_type
R 2529 5 660 mlcanopyfluxestype fracminlwp_canopy$o mlcanopy_type
R 2531 5 662 mlcanopyfluxestype obu_canopy mlcanopy_type
R 2533 5 664 mlcanopyfluxestype obu_canopy$sd mlcanopy_type
R 2534 5 665 mlcanopyfluxestype obu_canopy$p mlcanopy_type
R 2535 5 666 mlcanopyfluxestype obu_canopy$o mlcanopy_type
R 2537 5 668 mlcanopyfluxestype beta_canopy mlcanopy_type
R 2539 5 670 mlcanopyfluxestype beta_canopy$sd mlcanopy_type
R 2540 5 671 mlcanopyfluxestype beta_canopy$p mlcanopy_type
R 2541 5 672 mlcanopyfluxestype beta_canopy$o mlcanopy_type
R 2543 5 674 mlcanopyfluxestype prsc_canopy mlcanopy_type
R 2545 5 676 mlcanopyfluxestype prsc_canopy$sd mlcanopy_type
R 2546 5 677 mlcanopyfluxestype prsc_canopy$p mlcanopy_type
R 2547 5 678 mlcanopyfluxestype prsc_canopy$o mlcanopy_type
R 2549 5 680 mlcanopyfluxestype lc_canopy mlcanopy_type
R 2551 5 682 mlcanopyfluxestype lc_canopy$sd mlcanopy_type
R 2552 5 683 mlcanopyfluxestype lc_canopy$p mlcanopy_type
R 2553 5 684 mlcanopyfluxestype lc_canopy$o mlcanopy_type
R 2555 5 686 mlcanopyfluxestype zdisp_canopy mlcanopy_type
R 2557 5 688 mlcanopyfluxestype zdisp_canopy$sd mlcanopy_type
R 2558 5 689 mlcanopyfluxestype zdisp_canopy$p mlcanopy_type
R 2559 5 690 mlcanopyfluxestype zdisp_canopy$o mlcanopy_type
R 2561 5 692 mlcanopyfluxestype z0m_canopy mlcanopy_type
R 2563 5 694 mlcanopyfluxestype z0m_canopy$sd mlcanopy_type
R 2564 5 695 mlcanopyfluxestype z0m_canopy$p mlcanopy_type
R 2565 5 696 mlcanopyfluxestype z0m_canopy$o mlcanopy_type
R 2567 5 698 mlcanopyfluxestype g0_canopy mlcanopy_type
R 2569 5 700 mlcanopyfluxestype g0_canopy$sd mlcanopy_type
R 2570 5 701 mlcanopyfluxestype g0_canopy$p mlcanopy_type
R 2571 5 702 mlcanopyfluxestype g0_canopy$o mlcanopy_type
R 2573 5 704 mlcanopyfluxestype g1_canopy mlcanopy_type
R 2575 5 706 mlcanopyfluxestype g1_canopy$sd mlcanopy_type
R 2576 5 707 mlcanopyfluxestype g1_canopy$p mlcanopy_type
R 2577 5 708 mlcanopyfluxestype g1_canopy$o mlcanopy_type
R 2579 5 710 mlcanopyfluxestype albsoib_soil mlcanopy_type
R 2582 5 713 mlcanopyfluxestype albsoib_soil$sd mlcanopy_type
R 2583 5 714 mlcanopyfluxestype albsoib_soil$p mlcanopy_type
R 2584 5 715 mlcanopyfluxestype albsoib_soil$o mlcanopy_type
R 2586 5 717 mlcanopyfluxestype albsoid_soil mlcanopy_type
R 2589 5 720 mlcanopyfluxestype albsoid_soil$sd mlcanopy_type
R 2590 5 721 mlcanopyfluxestype albsoid_soil$p mlcanopy_type
R 2591 5 722 mlcanopyfluxestype albsoid_soil$o mlcanopy_type
R 2593 5 724 mlcanopyfluxestype swsoi_soil mlcanopy_type
R 2596 5 727 mlcanopyfluxestype swsoi_soil$sd mlcanopy_type
R 2597 5 728 mlcanopyfluxestype swsoi_soil$p mlcanopy_type
R 2598 5 729 mlcanopyfluxestype swsoi_soil$o mlcanopy_type
R 2600 5 731 mlcanopyfluxestype lwsoi_soil mlcanopy_type
R 2602 5 733 mlcanopyfluxestype lwsoi_soil$sd mlcanopy_type
R 2603 5 734 mlcanopyfluxestype lwsoi_soil$p mlcanopy_type
R 2604 5 735 mlcanopyfluxestype lwsoi_soil$o mlcanopy_type
R 2606 5 737 mlcanopyfluxestype rnsoi_soil mlcanopy_type
R 2608 5 739 mlcanopyfluxestype rnsoi_soil$sd mlcanopy_type
R 2609 5 740 mlcanopyfluxestype rnsoi_soil$p mlcanopy_type
R 2610 5 741 mlcanopyfluxestype rnsoi_soil$o mlcanopy_type
R 2612 5 743 mlcanopyfluxestype shsoi_soil mlcanopy_type
R 2614 5 745 mlcanopyfluxestype shsoi_soil$sd mlcanopy_type
R 2615 5 746 mlcanopyfluxestype shsoi_soil$p mlcanopy_type
R 2616 5 747 mlcanopyfluxestype shsoi_soil$o mlcanopy_type
R 2618 5 749 mlcanopyfluxestype lhsoi_soil mlcanopy_type
R 2620 5 751 mlcanopyfluxestype lhsoi_soil$sd mlcanopy_type
R 2621 5 752 mlcanopyfluxestype lhsoi_soil$p mlcanopy_type
R 2622 5 753 mlcanopyfluxestype lhsoi_soil$o mlcanopy_type
R 2624 5 755 mlcanopyfluxestype etsoi_soil mlcanopy_type
R 2626 5 757 mlcanopyfluxestype etsoi_soil$sd mlcanopy_type
R 2627 5 758 mlcanopyfluxestype etsoi_soil$p mlcanopy_type
R 2628 5 759 mlcanopyfluxestype etsoi_soil$o mlcanopy_type
R 2630 5 761 mlcanopyfluxestype gsoi_soil mlcanopy_type
R 2632 5 763 mlcanopyfluxestype gsoi_soil$sd mlcanopy_type
R 2633 5 764 mlcanopyfluxestype gsoi_soil$p mlcanopy_type
R 2634 5 765 mlcanopyfluxestype gsoi_soil$o mlcanopy_type
R 2636 5 767 mlcanopyfluxestype tg_soil mlcanopy_type
R 2638 5 769 mlcanopyfluxestype tg_soil$sd mlcanopy_type
R 2639 5 770 mlcanopyfluxestype tg_soil$p mlcanopy_type
R 2640 5 771 mlcanopyfluxestype tg_soil$o mlcanopy_type
R 2642 5 773 mlcanopyfluxestype tg_bef_soil mlcanopy_type
R 2644 5 775 mlcanopyfluxestype tg_bef_soil$sd mlcanopy_type
R 2645 5 776 mlcanopyfluxestype tg_bef_soil$p mlcanopy_type
R 2646 5 777 mlcanopyfluxestype tg_bef_soil$o mlcanopy_type
R 2648 5 779 mlcanopyfluxestype dtg_soil mlcanopy_type
R 2651 5 782 mlcanopyfluxestype dtg_soil$sd mlcanopy_type
R 2652 5 783 mlcanopyfluxestype dtg_soil$p mlcanopy_type
R 2653 5 784 mlcanopyfluxestype dtg_soil$o mlcanopy_type
R 2655 5 786 mlcanopyfluxestype eg_soil mlcanopy_type
R 2657 5 788 mlcanopyfluxestype eg_soil$sd mlcanopy_type
R 2658 5 789 mlcanopyfluxestype eg_soil$p mlcanopy_type
R 2659 5 790 mlcanopyfluxestype eg_soil$o mlcanopy_type
R 2661 5 792 mlcanopyfluxestype rhg_soil mlcanopy_type
R 2663 5 794 mlcanopyfluxestype rhg_soil$sd mlcanopy_type
R 2664 5 795 mlcanopyfluxestype rhg_soil$p mlcanopy_type
R 2665 5 796 mlcanopyfluxestype rhg_soil$o mlcanopy_type
R 2667 5 798 mlcanopyfluxestype gac0_soil mlcanopy_type
R 2669 5 800 mlcanopyfluxestype gac0_soil$sd mlcanopy_type
R 2670 5 801 mlcanopyfluxestype gac0_soil$p mlcanopy_type
R 2671 5 802 mlcanopyfluxestype gac0_soil$o mlcanopy_type
R 2673 5 804 mlcanopyfluxestype soil_t_soil mlcanopy_type
R 2675 5 806 mlcanopyfluxestype soil_t_soil$sd mlcanopy_type
R 2676 5 807 mlcanopyfluxestype soil_t_soil$p mlcanopy_type
R 2677 5 808 mlcanopyfluxestype soil_t_soil$o mlcanopy_type
R 2679 5 810 mlcanopyfluxestype soil_dz_soil mlcanopy_type
R 2681 5 812 mlcanopyfluxestype soil_dz_soil$sd mlcanopy_type
R 2682 5 813 mlcanopyfluxestype soil_dz_soil$p mlcanopy_type
R 2683 5 814 mlcanopyfluxestype soil_dz_soil$o mlcanopy_type
R 2685 5 816 mlcanopyfluxestype soil_tk_soil mlcanopy_type
R 2687 5 818 mlcanopyfluxestype soil_tk_soil$sd mlcanopy_type
R 2688 5 819 mlcanopyfluxestype soil_tk_soil$p mlcanopy_type
R 2689 5 820 mlcanopyfluxestype soil_tk_soil$o mlcanopy_type
R 2691 5 822 mlcanopyfluxestype soilres_soil mlcanopy_type
R 2693 5 824 mlcanopyfluxestype soilres_soil$sd mlcanopy_type
R 2694 5 825 mlcanopyfluxestype soilres_soil$p mlcanopy_type
R 2695 5 826 mlcanopyfluxestype soilres_soil$o mlcanopy_type
R 2697 5 828 mlcanopyfluxestype btran_soil mlcanopy_type
R 2699 5 830 mlcanopyfluxestype btran_soil$sd mlcanopy_type
R 2700 5 831 mlcanopyfluxestype btran_soil$p mlcanopy_type
R 2701 5 832 mlcanopyfluxestype btran_soil$o mlcanopy_type
R 2703 5 834 mlcanopyfluxestype psis_soil mlcanopy_type
R 2705 5 836 mlcanopyfluxestype psis_soil$sd mlcanopy_type
R 2706 5 837 mlcanopyfluxestype psis_soil$p mlcanopy_type
R 2707 5 838 mlcanopyfluxestype psis_soil$o mlcanopy_type
R 2709 5 840 mlcanopyfluxestype rsoil_soil mlcanopy_type
R 2711 5 842 mlcanopyfluxestype rsoil_soil$sd mlcanopy_type
R 2712 5 843 mlcanopyfluxestype rsoil_soil$p mlcanopy_type
R 2713 5 844 mlcanopyfluxestype rsoil_soil$o mlcanopy_type
R 2715 5 846 mlcanopyfluxestype soil_et_loss_soil mlcanopy_type
R 2718 5 849 mlcanopyfluxestype soil_et_loss_soil$sd mlcanopy_type
R 2719 5 850 mlcanopyfluxestype soil_et_loss_soil$p mlcanopy_type
R 2720 5 851 mlcanopyfluxestype soil_et_loss_soil$o mlcanopy_type
R 2722 5 853 mlcanopyfluxestype ncan_canopy mlcanopy_type
R 2724 5 855 mlcanopyfluxestype ncan_canopy$sd mlcanopy_type
R 2725 5 856 mlcanopyfluxestype ncan_canopy$p mlcanopy_type
R 2726 5 857 mlcanopyfluxestype ncan_canopy$o mlcanopy_type
R 2728 5 859 mlcanopyfluxestype ntop_canopy mlcanopy_type
R 2730 5 861 mlcanopyfluxestype ntop_canopy$sd mlcanopy_type
R 2731 5 862 mlcanopyfluxestype ntop_canopy$p mlcanopy_type
R 2732 5 863 mlcanopyfluxestype ntop_canopy$o mlcanopy_type
R 2734 5 865 mlcanopyfluxestype nbot_canopy mlcanopy_type
R 2736 5 867 mlcanopyfluxestype nbot_canopy$sd mlcanopy_type
R 2737 5 868 mlcanopyfluxestype nbot_canopy$p mlcanopy_type
R 2738 5 869 mlcanopyfluxestype nbot_canopy$o mlcanopy_type
R 2740 5 871 mlcanopyfluxestype dlai_frac_profile mlcanopy_type
R 2743 5 874 mlcanopyfluxestype dlai_frac_profile$sd mlcanopy_type
R 2744 5 875 mlcanopyfluxestype dlai_frac_profile$p mlcanopy_type
R 2745 5 876 mlcanopyfluxestype dlai_frac_profile$o mlcanopy_type
R 2747 5 878 mlcanopyfluxestype dsai_frac_profile mlcanopy_type
R 2750 5 881 mlcanopyfluxestype dsai_frac_profile$sd mlcanopy_type
R 2751 5 882 mlcanopyfluxestype dsai_frac_profile$p mlcanopy_type
R 2752 5 883 mlcanopyfluxestype dsai_frac_profile$o mlcanopy_type
R 2754 5 885 mlcanopyfluxestype dlai_profile mlcanopy_type
R 2757 5 888 mlcanopyfluxestype dlai_profile$sd mlcanopy_type
R 2758 5 889 mlcanopyfluxestype dlai_profile$p mlcanopy_type
R 2759 5 890 mlcanopyfluxestype dlai_profile$o mlcanopy_type
R 2761 5 892 mlcanopyfluxestype dsai_profile mlcanopy_type
R 2764 5 895 mlcanopyfluxestype dsai_profile$sd mlcanopy_type
R 2765 5 896 mlcanopyfluxestype dsai_profile$p mlcanopy_type
R 2766 5 897 mlcanopyfluxestype dsai_profile$o mlcanopy_type
R 2768 5 899 mlcanopyfluxestype dpai_profile mlcanopy_type
R 2771 5 902 mlcanopyfluxestype dpai_profile$sd mlcanopy_type
R 2772 5 903 mlcanopyfluxestype dpai_profile$p mlcanopy_type
R 2773 5 904 mlcanopyfluxestype dpai_profile$o mlcanopy_type
R 2775 5 906 mlcanopyfluxestype zs_profile mlcanopy_type
R 2778 5 909 mlcanopyfluxestype zs_profile$sd mlcanopy_type
R 2779 5 910 mlcanopyfluxestype zs_profile$p mlcanopy_type
R 2780 5 911 mlcanopyfluxestype zs_profile$o mlcanopy_type
R 2782 5 913 mlcanopyfluxestype zw_profile mlcanopy_type
R 2785 5 916 mlcanopyfluxestype zw_profile$sd mlcanopy_type
R 2786 5 917 mlcanopyfluxestype zw_profile$p mlcanopy_type
R 2787 5 918 mlcanopyfluxestype zw_profile$o mlcanopy_type
R 2789 5 920 mlcanopyfluxestype dz_profile mlcanopy_type
R 2792 5 923 mlcanopyfluxestype dz_profile$sd mlcanopy_type
R 2793 5 924 mlcanopyfluxestype dz_profile$p mlcanopy_type
R 2794 5 925 mlcanopyfluxestype dz_profile$o mlcanopy_type
R 2796 5 927 mlcanopyfluxestype vcmax25_profile mlcanopy_type
R 2799 5 930 mlcanopyfluxestype vcmax25_profile$sd mlcanopy_type
R 2800 5 931 mlcanopyfluxestype vcmax25_profile$p mlcanopy_type
R 2801 5 932 mlcanopyfluxestype vcmax25_profile$o mlcanopy_type
R 2803 5 934 mlcanopyfluxestype jmax25_profile mlcanopy_type
R 2806 5 937 mlcanopyfluxestype jmax25_profile$sd mlcanopy_type
R 2807 5 938 mlcanopyfluxestype jmax25_profile$p mlcanopy_type
R 2808 5 939 mlcanopyfluxestype jmax25_profile$o mlcanopy_type
R 2810 5 941 mlcanopyfluxestype kp25_profile mlcanopy_type
R 2813 5 944 mlcanopyfluxestype kp25_profile$sd mlcanopy_type
R 2814 5 945 mlcanopyfluxestype kp25_profile$p mlcanopy_type
R 2815 5 946 mlcanopyfluxestype kp25_profile$o mlcanopy_type
R 2817 5 948 mlcanopyfluxestype rd25_profile mlcanopy_type
R 2820 5 951 mlcanopyfluxestype rd25_profile$sd mlcanopy_type
R 2821 5 952 mlcanopyfluxestype rd25_profile$p mlcanopy_type
R 2822 5 953 mlcanopyfluxestype rd25_profile$o mlcanopy_type
R 2824 5 955 mlcanopyfluxestype cpleaf_profile mlcanopy_type
R 2827 5 958 mlcanopyfluxestype cpleaf_profile$sd mlcanopy_type
R 2828 5 959 mlcanopyfluxestype cpleaf_profile$p mlcanopy_type
R 2829 5 960 mlcanopyfluxestype cpleaf_profile$o mlcanopy_type
R 2831 5 962 mlcanopyfluxestype fracsun_profile mlcanopy_type
R 2834 5 965 mlcanopyfluxestype fracsun_profile$sd mlcanopy_type
R 2835 5 966 mlcanopyfluxestype fracsun_profile$p mlcanopy_type
R 2836 5 967 mlcanopyfluxestype fracsun_profile$o mlcanopy_type
R 2838 5 969 mlcanopyfluxestype kb_profile mlcanopy_type
R 2841 5 972 mlcanopyfluxestype kb_profile$sd mlcanopy_type
R 2842 5 973 mlcanopyfluxestype kb_profile$p mlcanopy_type
R 2843 5 974 mlcanopyfluxestype kb_profile$o mlcanopy_type
R 2845 5 976 mlcanopyfluxestype tb_profile mlcanopy_type
R 2848 5 979 mlcanopyfluxestype tb_profile$sd mlcanopy_type
R 2849 5 980 mlcanopyfluxestype tb_profile$p mlcanopy_type
R 2850 5 981 mlcanopyfluxestype tb_profile$o mlcanopy_type
R 2852 5 983 mlcanopyfluxestype td_profile mlcanopy_type
R 2855 5 986 mlcanopyfluxestype td_profile$sd mlcanopy_type
R 2856 5 987 mlcanopyfluxestype td_profile$p mlcanopy_type
R 2857 5 988 mlcanopyfluxestype td_profile$o mlcanopy_type
R 2859 5 990 mlcanopyfluxestype tbi_profile mlcanopy_type
R 2862 5 993 mlcanopyfluxestype tbi_profile$sd mlcanopy_type
R 2863 5 994 mlcanopyfluxestype tbi_profile$p mlcanopy_type
R 2864 5 995 mlcanopyfluxestype tbi_profile$o mlcanopy_type
R 2866 5 997 mlcanopyfluxestype swbeam_profile mlcanopy_type
R 2870 5 1001 mlcanopyfluxestype swbeam_profile$sd mlcanopy_type
R 2871 5 1002 mlcanopyfluxestype swbeam_profile$p mlcanopy_type
R 2872 5 1003 mlcanopyfluxestype swbeam_profile$o mlcanopy_type
R 2874 5 1005 mlcanopyfluxestype swupw_profile mlcanopy_type
R 2878 5 1009 mlcanopyfluxestype swupw_profile$sd mlcanopy_type
R 2879 5 1010 mlcanopyfluxestype swupw_profile$p mlcanopy_type
R 2880 5 1011 mlcanopyfluxestype swupw_profile$o mlcanopy_type
R 2882 5 1013 mlcanopyfluxestype swdwn_profile mlcanopy_type
R 2886 5 1017 mlcanopyfluxestype swdwn_profile$sd mlcanopy_type
R 2887 5 1018 mlcanopyfluxestype swdwn_profile$p mlcanopy_type
R 2888 5 1019 mlcanopyfluxestype swdwn_profile$o mlcanopy_type
R 2890 5 1021 mlcanopyfluxestype lwupw_profile mlcanopy_type
R 2893 5 1024 mlcanopyfluxestype lwupw_profile$sd mlcanopy_type
R 2894 5 1025 mlcanopyfluxestype lwupw_profile$p mlcanopy_type
R 2895 5 1026 mlcanopyfluxestype lwupw_profile$o mlcanopy_type
R 2897 5 1028 mlcanopyfluxestype lwdwn_profile mlcanopy_type
R 2900 5 1031 mlcanopyfluxestype lwdwn_profile$sd mlcanopy_type
R 2901 5 1032 mlcanopyfluxestype lwdwn_profile$p mlcanopy_type
R 2902 5 1033 mlcanopyfluxestype lwdwn_profile$o mlcanopy_type
R 2904 5 1035 mlcanopyfluxestype swsrc_profile mlcanopy_type
R 2908 5 1039 mlcanopyfluxestype swsrc_profile$sd mlcanopy_type
R 2909 5 1040 mlcanopyfluxestype swsrc_profile$p mlcanopy_type
R 2910 5 1041 mlcanopyfluxestype swsrc_profile$o mlcanopy_type
R 2912 5 1043 mlcanopyfluxestype lwsrc_profile mlcanopy_type
R 2915 5 1046 mlcanopyfluxestype lwsrc_profile$sd mlcanopy_type
R 2916 5 1047 mlcanopyfluxestype lwsrc_profile$p mlcanopy_type
R 2917 5 1048 mlcanopyfluxestype lwsrc_profile$o mlcanopy_type
R 2919 5 1050 mlcanopyfluxestype rnsrc_profile mlcanopy_type
R 2922 5 1053 mlcanopyfluxestype rnsrc_profile$sd mlcanopy_type
R 2923 5 1054 mlcanopyfluxestype rnsrc_profile$p mlcanopy_type
R 2924 5 1055 mlcanopyfluxestype rnsrc_profile$o mlcanopy_type
R 2926 5 1057 mlcanopyfluxestype stsrc_profile mlcanopy_type
R 2929 5 1060 mlcanopyfluxestype stsrc_profile$sd mlcanopy_type
R 2930 5 1061 mlcanopyfluxestype stsrc_profile$p mlcanopy_type
R 2931 5 1062 mlcanopyfluxestype stsrc_profile$o mlcanopy_type
R 2933 5 1064 mlcanopyfluxestype shsrc_profile mlcanopy_type
R 2936 5 1067 mlcanopyfluxestype shsrc_profile$sd mlcanopy_type
R 2937 5 1068 mlcanopyfluxestype shsrc_profile$p mlcanopy_type
R 2938 5 1069 mlcanopyfluxestype shsrc_profile$o mlcanopy_type
R 2940 5 1071 mlcanopyfluxestype lhsrc_profile mlcanopy_type
R 2943 5 1074 mlcanopyfluxestype lhsrc_profile$sd mlcanopy_type
R 2944 5 1075 mlcanopyfluxestype lhsrc_profile$p mlcanopy_type
R 2945 5 1076 mlcanopyfluxestype lhsrc_profile$o mlcanopy_type
R 2947 5 1078 mlcanopyfluxestype etsrc_profile mlcanopy_type
R 2950 5 1081 mlcanopyfluxestype etsrc_profile$sd mlcanopy_type
R 2951 5 1082 mlcanopyfluxestype etsrc_profile$p mlcanopy_type
R 2952 5 1083 mlcanopyfluxestype etsrc_profile$o mlcanopy_type
R 2954 5 1085 mlcanopyfluxestype trsrc_profile mlcanopy_type
R 2957 5 1088 mlcanopyfluxestype trsrc_profile$sd mlcanopy_type
R 2958 5 1089 mlcanopyfluxestype trsrc_profile$p mlcanopy_type
R 2959 5 1090 mlcanopyfluxestype trsrc_profile$o mlcanopy_type
R 2961 5 1092 mlcanopyfluxestype evsrc_profile mlcanopy_type
R 2964 5 1095 mlcanopyfluxestype evsrc_profile$sd mlcanopy_type
R 2965 5 1096 mlcanopyfluxestype evsrc_profile$p mlcanopy_type
R 2966 5 1097 mlcanopyfluxestype evsrc_profile$o mlcanopy_type
R 2968 5 1099 mlcanopyfluxestype fco2src_profile mlcanopy_type
R 2971 5 1102 mlcanopyfluxestype fco2src_profile$sd mlcanopy_type
R 2972 5 1103 mlcanopyfluxestype fco2src_profile$p mlcanopy_type
R 2973 5 1104 mlcanopyfluxestype fco2src_profile$o mlcanopy_type
R 2975 5 1106 mlcanopyfluxestype wind_profile mlcanopy_type
R 2978 5 1109 mlcanopyfluxestype wind_profile$sd mlcanopy_type
R 2979 5 1110 mlcanopyfluxestype wind_profile$p mlcanopy_type
R 2980 5 1111 mlcanopyfluxestype wind_profile$o mlcanopy_type
R 2982 5 1113 mlcanopyfluxestype tair_profile mlcanopy_type
R 2985 5 1116 mlcanopyfluxestype tair_profile$sd mlcanopy_type
R 2986 5 1117 mlcanopyfluxestype tair_profile$p mlcanopy_type
R 2987 5 1118 mlcanopyfluxestype tair_profile$o mlcanopy_type
R 2989 5 1120 mlcanopyfluxestype eair_profile mlcanopy_type
R 2992 5 1123 mlcanopyfluxestype eair_profile$sd mlcanopy_type
R 2993 5 1124 mlcanopyfluxestype eair_profile$p mlcanopy_type
R 2994 5 1125 mlcanopyfluxestype eair_profile$o mlcanopy_type
R 2996 5 1127 mlcanopyfluxestype cair_profile mlcanopy_type
R 2999 5 1130 mlcanopyfluxestype cair_profile$sd mlcanopy_type
R 3000 5 1131 mlcanopyfluxestype cair_profile$p mlcanopy_type
R 3001 5 1132 mlcanopyfluxestype cair_profile$o mlcanopy_type
R 3003 5 1134 mlcanopyfluxestype tair_bef_profile mlcanopy_type
R 3006 5 1137 mlcanopyfluxestype tair_bef_profile$sd mlcanopy_type
R 3007 5 1138 mlcanopyfluxestype tair_bef_profile$p mlcanopy_type
R 3008 5 1139 mlcanopyfluxestype tair_bef_profile$o mlcanopy_type
R 3010 5 1141 mlcanopyfluxestype eair_bef_profile mlcanopy_type
R 3013 5 1144 mlcanopyfluxestype eair_bef_profile$sd mlcanopy_type
R 3014 5 1145 mlcanopyfluxestype eair_bef_profile$p mlcanopy_type
R 3015 5 1146 mlcanopyfluxestype eair_bef_profile$o mlcanopy_type
R 3017 5 1148 mlcanopyfluxestype cair_bef_profile mlcanopy_type
R 3020 5 1151 mlcanopyfluxestype cair_bef_profile$sd mlcanopy_type
R 3021 5 1152 mlcanopyfluxestype cair_bef_profile$p mlcanopy_type
R 3022 5 1153 mlcanopyfluxestype cair_bef_profile$o mlcanopy_type
R 3024 5 1155 mlcanopyfluxestype dtair_profile mlcanopy_type
R 3028 5 1159 mlcanopyfluxestype dtair_profile$sd mlcanopy_type
R 3029 5 1160 mlcanopyfluxestype dtair_profile$p mlcanopy_type
R 3030 5 1161 mlcanopyfluxestype dtair_profile$o mlcanopy_type
R 3032 5 1163 mlcanopyfluxestype deair_profile mlcanopy_type
R 3036 5 1167 mlcanopyfluxestype deair_profile$sd mlcanopy_type
R 3037 5 1168 mlcanopyfluxestype deair_profile$p mlcanopy_type
R 3038 5 1169 mlcanopyfluxestype deair_profile$o mlcanopy_type
R 3040 5 1171 mlcanopyfluxestype wind_data_profile mlcanopy_type
R 3043 5 1174 mlcanopyfluxestype wind_data_profile$sd mlcanopy_type
R 3044 5 1175 mlcanopyfluxestype wind_data_profile$p mlcanopy_type
R 3045 5 1176 mlcanopyfluxestype wind_data_profile$o mlcanopy_type
R 3047 5 1178 mlcanopyfluxestype tair_data_profile mlcanopy_type
R 3050 5 1181 mlcanopyfluxestype tair_data_profile$sd mlcanopy_type
R 3051 5 1182 mlcanopyfluxestype tair_data_profile$p mlcanopy_type
R 3052 5 1183 mlcanopyfluxestype tair_data_profile$o mlcanopy_type
R 3054 5 1185 mlcanopyfluxestype eair_data_profile mlcanopy_type
R 3057 5 1188 mlcanopyfluxestype eair_data_profile$sd mlcanopy_type
R 3058 5 1189 mlcanopyfluxestype eair_data_profile$p mlcanopy_type
R 3059 5 1190 mlcanopyfluxestype eair_data_profile$o mlcanopy_type
R 3061 5 1192 mlcanopyfluxestype shair_profile mlcanopy_type
R 3064 5 1195 mlcanopyfluxestype shair_profile$sd mlcanopy_type
R 3065 5 1196 mlcanopyfluxestype shair_profile$p mlcanopy_type
R 3066 5 1197 mlcanopyfluxestype shair_profile$o mlcanopy_type
R 3068 5 1199 mlcanopyfluxestype etair_profile mlcanopy_type
R 3071 5 1202 mlcanopyfluxestype etair_profile$sd mlcanopy_type
R 3072 5 1203 mlcanopyfluxestype etair_profile$p mlcanopy_type
R 3073 5 1204 mlcanopyfluxestype etair_profile$o mlcanopy_type
R 3075 5 1206 mlcanopyfluxestype stair_profile mlcanopy_type
R 3078 5 1209 mlcanopyfluxestype stair_profile$sd mlcanopy_type
R 3079 5 1210 mlcanopyfluxestype stair_profile$p mlcanopy_type
R 3080 5 1211 mlcanopyfluxestype stair_profile$o mlcanopy_type
R 3082 5 1213 mlcanopyfluxestype mflx_profile mlcanopy_type
R 3085 5 1216 mlcanopyfluxestype mflx_profile$sd mlcanopy_type
R 3086 5 1217 mlcanopyfluxestype mflx_profile$p mlcanopy_type
R 3087 5 1218 mlcanopyfluxestype mflx_profile$o mlcanopy_type
R 3089 5 1220 mlcanopyfluxestype gac_profile mlcanopy_type
R 3092 5 1223 mlcanopyfluxestype gac_profile$sd mlcanopy_type
R 3093 5 1224 mlcanopyfluxestype gac_profile$p mlcanopy_type
R 3094 5 1225 mlcanopyfluxestype gac_profile$o mlcanopy_type
R 3096 5 1227 mlcanopyfluxestype kc_eddy_profile mlcanopy_type
R 3099 5 1230 mlcanopyfluxestype kc_eddy_profile$sd mlcanopy_type
R 3100 5 1231 mlcanopyfluxestype kc_eddy_profile$p mlcanopy_type
R 3101 5 1232 mlcanopyfluxestype kc_eddy_profile$o mlcanopy_type
R 3103 5 1234 mlcanopyfluxestype swleaf_mean_profile mlcanopy_type
R 3107 5 1238 mlcanopyfluxestype swleaf_mean_profile$sd mlcanopy_type
R 3108 5 1239 mlcanopyfluxestype swleaf_mean_profile$p mlcanopy_type
R 3109 5 1240 mlcanopyfluxestype swleaf_mean_profile$o mlcanopy_type
R 3111 5 1242 mlcanopyfluxestype lwleaf_mean_profile mlcanopy_type
R 3114 5 1245 mlcanopyfluxestype lwleaf_mean_profile$sd mlcanopy_type
R 3115 5 1246 mlcanopyfluxestype lwleaf_mean_profile$p mlcanopy_type
R 3116 5 1247 mlcanopyfluxestype lwleaf_mean_profile$o mlcanopy_type
R 3118 5 1249 mlcanopyfluxestype rnleaf_mean_profile mlcanopy_type
R 3121 5 1252 mlcanopyfluxestype rnleaf_mean_profile$sd mlcanopy_type
R 3122 5 1253 mlcanopyfluxestype rnleaf_mean_profile$p mlcanopy_type
R 3123 5 1254 mlcanopyfluxestype rnleaf_mean_profile$o mlcanopy_type
R 3125 5 1256 mlcanopyfluxestype stleaf_mean_profile mlcanopy_type
R 3128 5 1259 mlcanopyfluxestype stleaf_mean_profile$sd mlcanopy_type
R 3129 5 1260 mlcanopyfluxestype stleaf_mean_profile$p mlcanopy_type
R 3130 5 1261 mlcanopyfluxestype stleaf_mean_profile$o mlcanopy_type
R 3132 5 1263 mlcanopyfluxestype shleaf_mean_profile mlcanopy_type
R 3135 5 1266 mlcanopyfluxestype shleaf_mean_profile$sd mlcanopy_type
R 3136 5 1267 mlcanopyfluxestype shleaf_mean_profile$p mlcanopy_type
R 3137 5 1268 mlcanopyfluxestype shleaf_mean_profile$o mlcanopy_type
R 3139 5 1270 mlcanopyfluxestype lhleaf_mean_profile mlcanopy_type
R 3142 5 1273 mlcanopyfluxestype lhleaf_mean_profile$sd mlcanopy_type
R 3143 5 1274 mlcanopyfluxestype lhleaf_mean_profile$p mlcanopy_type
R 3144 5 1275 mlcanopyfluxestype lhleaf_mean_profile$o mlcanopy_type
R 3146 5 1277 mlcanopyfluxestype etleaf_mean_profile mlcanopy_type
R 3149 5 1280 mlcanopyfluxestype etleaf_mean_profile$sd mlcanopy_type
R 3150 5 1281 mlcanopyfluxestype etleaf_mean_profile$p mlcanopy_type
R 3151 5 1282 mlcanopyfluxestype etleaf_mean_profile$o mlcanopy_type
R 3153 5 1284 mlcanopyfluxestype trleaf_mean_profile mlcanopy_type
R 3156 5 1287 mlcanopyfluxestype trleaf_mean_profile$sd mlcanopy_type
R 3157 5 1288 mlcanopyfluxestype trleaf_mean_profile$p mlcanopy_type
R 3158 5 1289 mlcanopyfluxestype trleaf_mean_profile$o mlcanopy_type
R 3160 5 1291 mlcanopyfluxestype evleaf_mean_profile mlcanopy_type
R 3163 5 1294 mlcanopyfluxestype evleaf_mean_profile$sd mlcanopy_type
R 3164 5 1295 mlcanopyfluxestype evleaf_mean_profile$p mlcanopy_type
R 3165 5 1296 mlcanopyfluxestype evleaf_mean_profile$o mlcanopy_type
R 3167 5 1298 mlcanopyfluxestype fco2_mean_profile mlcanopy_type
R 3170 5 1301 mlcanopyfluxestype fco2_mean_profile$sd mlcanopy_type
R 3171 5 1302 mlcanopyfluxestype fco2_mean_profile$p mlcanopy_type
R 3172 5 1303 mlcanopyfluxestype fco2_mean_profile$o mlcanopy_type
R 3174 5 1305 mlcanopyfluxestype apar_mean_profile mlcanopy_type
R 3177 5 1308 mlcanopyfluxestype apar_mean_profile$sd mlcanopy_type
R 3178 5 1309 mlcanopyfluxestype apar_mean_profile$p mlcanopy_type
R 3179 5 1310 mlcanopyfluxestype apar_mean_profile$o mlcanopy_type
R 3181 5 1312 mlcanopyfluxestype gs_mean_profile mlcanopy_type
R 3184 5 1315 mlcanopyfluxestype gs_mean_profile$sd mlcanopy_type
R 3185 5 1316 mlcanopyfluxestype gs_mean_profile$p mlcanopy_type
R 3186 5 1317 mlcanopyfluxestype gs_mean_profile$o mlcanopy_type
R 3188 5 1319 mlcanopyfluxestype tleaf_mean_profile mlcanopy_type
R 3191 5 1322 mlcanopyfluxestype tleaf_mean_profile$sd mlcanopy_type
R 3192 5 1323 mlcanopyfluxestype tleaf_mean_profile$p mlcanopy_type
R 3193 5 1324 mlcanopyfluxestype tleaf_mean_profile$o mlcanopy_type
R 3195 5 1326 mlcanopyfluxestype lwp_mean_profile mlcanopy_type
R 3198 5 1329 mlcanopyfluxestype lwp_mean_profile$sd mlcanopy_type
R 3199 5 1330 mlcanopyfluxestype lwp_mean_profile$p mlcanopy_type
R 3200 5 1331 mlcanopyfluxestype lwp_mean_profile$o mlcanopy_type
R 3202 5 1333 mlcanopyfluxestype lsc_profile mlcanopy_type
R 3205 5 1336 mlcanopyfluxestype lsc_profile$sd mlcanopy_type
R 3206 5 1337 mlcanopyfluxestype lsc_profile$p mlcanopy_type
R 3207 5 1338 mlcanopyfluxestype lsc_profile$o mlcanopy_type
R 3209 5 1340 mlcanopyfluxestype h2ocan_profile mlcanopy_type
R 3212 5 1343 mlcanopyfluxestype h2ocan_profile$sd mlcanopy_type
R 3213 5 1344 mlcanopyfluxestype h2ocan_profile$p mlcanopy_type
R 3214 5 1345 mlcanopyfluxestype h2ocan_profile$o mlcanopy_type
R 3216 5 1347 mlcanopyfluxestype h2ocan_bef_profile mlcanopy_type
R 3219 5 1350 mlcanopyfluxestype h2ocan_bef_profile$sd mlcanopy_type
R 3220 5 1351 mlcanopyfluxestype h2ocan_bef_profile$p mlcanopy_type
R 3221 5 1352 mlcanopyfluxestype h2ocan_bef_profile$o mlcanopy_type
R 3223 5 1354 mlcanopyfluxestype dh2ocan_profile mlcanopy_type
R 3227 5 1358 mlcanopyfluxestype dh2ocan_profile$sd mlcanopy_type
R 3228 5 1359 mlcanopyfluxestype dh2ocan_profile$p mlcanopy_type
R 3229 5 1360 mlcanopyfluxestype dh2ocan_profile$o mlcanopy_type
R 3231 5 1362 mlcanopyfluxestype fwet_profile mlcanopy_type
R 3234 5 1365 mlcanopyfluxestype fwet_profile$sd mlcanopy_type
R 3235 5 1366 mlcanopyfluxestype fwet_profile$p mlcanopy_type
R 3236 5 1367 mlcanopyfluxestype fwet_profile$o mlcanopy_type
R 3238 5 1369 mlcanopyfluxestype fdry_profile mlcanopy_type
R 3241 5 1372 mlcanopyfluxestype fdry_profile$sd mlcanopy_type
R 3242 5 1373 mlcanopyfluxestype fdry_profile$p mlcanopy_type
R 3243 5 1374 mlcanopyfluxestype fdry_profile$o mlcanopy_type
R 3245 5 1376 mlcanopyfluxestype tleaf_leaf mlcanopy_type
R 3249 5 1380 mlcanopyfluxestype tleaf_leaf$sd mlcanopy_type
R 3250 5 1381 mlcanopyfluxestype tleaf_leaf$p mlcanopy_type
R 3251 5 1382 mlcanopyfluxestype tleaf_leaf$o mlcanopy_type
R 3253 5 1384 mlcanopyfluxestype tleaf_bef_leaf mlcanopy_type
R 3257 5 1388 mlcanopyfluxestype tleaf_bef_leaf$sd mlcanopy_type
R 3258 5 1389 mlcanopyfluxestype tleaf_bef_leaf$p mlcanopy_type
R 3259 5 1390 mlcanopyfluxestype tleaf_bef_leaf$o mlcanopy_type
R 3261 5 1392 mlcanopyfluxestype dtleaf_leaf mlcanopy_type
R 3266 5 1397 mlcanopyfluxestype dtleaf_leaf$sd mlcanopy_type
R 3267 5 1398 mlcanopyfluxestype dtleaf_leaf$p mlcanopy_type
R 3268 5 1399 mlcanopyfluxestype dtleaf_leaf$o mlcanopy_type
R 3270 5 1401 mlcanopyfluxestype tleaf_hist_leaf mlcanopy_type
R 3274 5 1405 mlcanopyfluxestype tleaf_hist_leaf$sd mlcanopy_type
R 3275 5 1406 mlcanopyfluxestype tleaf_hist_leaf$p mlcanopy_type
R 3276 5 1407 mlcanopyfluxestype tleaf_hist_leaf$o mlcanopy_type
R 3278 5 1409 mlcanopyfluxestype swleaf_leaf mlcanopy_type
R 3283 5 1414 mlcanopyfluxestype swleaf_leaf$sd mlcanopy_type
R 3284 5 1415 mlcanopyfluxestype swleaf_leaf$p mlcanopy_type
R 3285 5 1416 mlcanopyfluxestype swleaf_leaf$o mlcanopy_type
R 3287 5 1418 mlcanopyfluxestype lwleaf_leaf mlcanopy_type
R 3291 5 1422 mlcanopyfluxestype lwleaf_leaf$sd mlcanopy_type
R 3292 5 1423 mlcanopyfluxestype lwleaf_leaf$p mlcanopy_type
R 3293 5 1424 mlcanopyfluxestype lwleaf_leaf$o mlcanopy_type
R 3295 5 1426 mlcanopyfluxestype rnleaf_leaf mlcanopy_type
R 3299 5 1430 mlcanopyfluxestype rnleaf_leaf$sd mlcanopy_type
R 3300 5 1431 mlcanopyfluxestype rnleaf_leaf$p mlcanopy_type
R 3301 5 1432 mlcanopyfluxestype rnleaf_leaf$o mlcanopy_type
R 3303 5 1434 mlcanopyfluxestype stleaf_leaf mlcanopy_type
R 3307 5 1438 mlcanopyfluxestype stleaf_leaf$sd mlcanopy_type
R 3308 5 1439 mlcanopyfluxestype stleaf_leaf$p mlcanopy_type
R 3309 5 1440 mlcanopyfluxestype stleaf_leaf$o mlcanopy_type
R 3311 5 1442 mlcanopyfluxestype shleaf_leaf mlcanopy_type
R 3315 5 1446 mlcanopyfluxestype shleaf_leaf$sd mlcanopy_type
R 3316 5 1447 mlcanopyfluxestype shleaf_leaf$p mlcanopy_type
R 3317 5 1448 mlcanopyfluxestype shleaf_leaf$o mlcanopy_type
R 3319 5 1450 mlcanopyfluxestype lhleaf_leaf mlcanopy_type
R 3323 5 1454 mlcanopyfluxestype lhleaf_leaf$sd mlcanopy_type
R 3324 5 1455 mlcanopyfluxestype lhleaf_leaf$p mlcanopy_type
R 3325 5 1456 mlcanopyfluxestype lhleaf_leaf$o mlcanopy_type
R 3327 5 1458 mlcanopyfluxestype trleaf_leaf mlcanopy_type
R 3331 5 1462 mlcanopyfluxestype trleaf_leaf$sd mlcanopy_type
R 3332 5 1463 mlcanopyfluxestype trleaf_leaf$p mlcanopy_type
R 3333 5 1464 mlcanopyfluxestype trleaf_leaf$o mlcanopy_type
R 3335 5 1466 mlcanopyfluxestype evleaf_leaf mlcanopy_type
R 3339 5 1470 mlcanopyfluxestype evleaf_leaf$sd mlcanopy_type
R 3340 5 1471 mlcanopyfluxestype evleaf_leaf$p mlcanopy_type
R 3341 5 1472 mlcanopyfluxestype evleaf_leaf$o mlcanopy_type
R 3343 5 1474 mlcanopyfluxestype gbh_leaf mlcanopy_type
R 3347 5 1478 mlcanopyfluxestype gbh_leaf$sd mlcanopy_type
R 3348 5 1479 mlcanopyfluxestype gbh_leaf$p mlcanopy_type
R 3349 5 1480 mlcanopyfluxestype gbh_leaf$o mlcanopy_type
R 3351 5 1482 mlcanopyfluxestype gbv_leaf mlcanopy_type
R 3355 5 1486 mlcanopyfluxestype gbv_leaf$sd mlcanopy_type
R 3356 5 1487 mlcanopyfluxestype gbv_leaf$p mlcanopy_type
R 3357 5 1488 mlcanopyfluxestype gbv_leaf$o mlcanopy_type
R 3359 5 1490 mlcanopyfluxestype gbc_leaf mlcanopy_type
R 3363 5 1494 mlcanopyfluxestype gbc_leaf$sd mlcanopy_type
R 3364 5 1495 mlcanopyfluxestype gbc_leaf$p mlcanopy_type
R 3365 5 1496 mlcanopyfluxestype gbc_leaf$o mlcanopy_type
R 3367 5 1498 mlcanopyfluxestype vcmax25_leaf mlcanopy_type
R 3371 5 1502 mlcanopyfluxestype vcmax25_leaf$sd mlcanopy_type
R 3372 5 1503 mlcanopyfluxestype vcmax25_leaf$p mlcanopy_type
R 3373 5 1504 mlcanopyfluxestype vcmax25_leaf$o mlcanopy_type
R 3375 5 1506 mlcanopyfluxestype jmax25_leaf mlcanopy_type
R 3379 5 1510 mlcanopyfluxestype jmax25_leaf$sd mlcanopy_type
R 3380 5 1511 mlcanopyfluxestype jmax25_leaf$p mlcanopy_type
R 3381 5 1512 mlcanopyfluxestype jmax25_leaf$o mlcanopy_type
R 3383 5 1514 mlcanopyfluxestype kp25_leaf mlcanopy_type
R 3387 5 1518 mlcanopyfluxestype kp25_leaf$sd mlcanopy_type
R 3388 5 1519 mlcanopyfluxestype kp25_leaf$p mlcanopy_type
R 3389 5 1520 mlcanopyfluxestype kp25_leaf$o mlcanopy_type
R 3391 5 1522 mlcanopyfluxestype rd25_leaf mlcanopy_type
R 3395 5 1526 mlcanopyfluxestype rd25_leaf$sd mlcanopy_type
R 3396 5 1527 mlcanopyfluxestype rd25_leaf$p mlcanopy_type
R 3397 5 1528 mlcanopyfluxestype rd25_leaf$o mlcanopy_type
R 3399 5 1530 mlcanopyfluxestype kc_leaf mlcanopy_type
R 3403 5 1534 mlcanopyfluxestype kc_leaf$sd mlcanopy_type
R 3404 5 1535 mlcanopyfluxestype kc_leaf$p mlcanopy_type
R 3405 5 1536 mlcanopyfluxestype kc_leaf$o mlcanopy_type
R 3407 5 1538 mlcanopyfluxestype ko_leaf mlcanopy_type
R 3411 5 1542 mlcanopyfluxestype ko_leaf$sd mlcanopy_type
R 3412 5 1543 mlcanopyfluxestype ko_leaf$p mlcanopy_type
R 3413 5 1544 mlcanopyfluxestype ko_leaf$o mlcanopy_type
R 3415 5 1546 mlcanopyfluxestype cp_leaf mlcanopy_type
R 3419 5 1550 mlcanopyfluxestype cp_leaf$sd mlcanopy_type
R 3420 5 1551 mlcanopyfluxestype cp_leaf$p mlcanopy_type
R 3421 5 1552 mlcanopyfluxestype cp_leaf$o mlcanopy_type
R 3423 5 1554 mlcanopyfluxestype vcmax_leaf mlcanopy_type
R 3427 5 1558 mlcanopyfluxestype vcmax_leaf$sd mlcanopy_type
R 3428 5 1559 mlcanopyfluxestype vcmax_leaf$p mlcanopy_type
R 3429 5 1560 mlcanopyfluxestype vcmax_leaf$o mlcanopy_type
R 3431 5 1562 mlcanopyfluxestype jmax_leaf mlcanopy_type
R 3435 5 1566 mlcanopyfluxestype jmax_leaf$sd mlcanopy_type
R 3436 5 1567 mlcanopyfluxestype jmax_leaf$p mlcanopy_type
R 3437 5 1568 mlcanopyfluxestype jmax_leaf$o mlcanopy_type
R 3439 5 1570 mlcanopyfluxestype kp_leaf mlcanopy_type
R 3443 5 1574 mlcanopyfluxestype kp_leaf$sd mlcanopy_type
R 3444 5 1575 mlcanopyfluxestype kp_leaf$p mlcanopy_type
R 3445 5 1576 mlcanopyfluxestype kp_leaf$o mlcanopy_type
R 3447 5 1578 mlcanopyfluxestype ceair_leaf mlcanopy_type
R 3451 5 1582 mlcanopyfluxestype ceair_leaf$sd mlcanopy_type
R 3452 5 1583 mlcanopyfluxestype ceair_leaf$p mlcanopy_type
R 3453 5 1584 mlcanopyfluxestype ceair_leaf$o mlcanopy_type
R 3455 5 1586 mlcanopyfluxestype leaf_esat_leaf mlcanopy_type
R 3459 5 1590 mlcanopyfluxestype leaf_esat_leaf$sd mlcanopy_type
R 3460 5 1591 mlcanopyfluxestype leaf_esat_leaf$p mlcanopy_type
R 3461 5 1592 mlcanopyfluxestype leaf_esat_leaf$o mlcanopy_type
R 3463 5 1594 mlcanopyfluxestype apar_leaf mlcanopy_type
R 3467 5 1598 mlcanopyfluxestype apar_leaf$sd mlcanopy_type
R 3468 5 1599 mlcanopyfluxestype apar_leaf$p mlcanopy_type
R 3469 5 1600 mlcanopyfluxestype apar_leaf$o mlcanopy_type
R 3471 5 1602 mlcanopyfluxestype je_leaf mlcanopy_type
R 3475 5 1606 mlcanopyfluxestype je_leaf$sd mlcanopy_type
R 3476 5 1607 mlcanopyfluxestype je_leaf$p mlcanopy_type
R 3477 5 1608 mlcanopyfluxestype je_leaf$o mlcanopy_type
R 3479 5 1610 mlcanopyfluxestype ac_leaf mlcanopy_type
R 3483 5 1614 mlcanopyfluxestype ac_leaf$sd mlcanopy_type
R 3484 5 1615 mlcanopyfluxestype ac_leaf$p mlcanopy_type
R 3485 5 1616 mlcanopyfluxestype ac_leaf$o mlcanopy_type
R 3487 5 1618 mlcanopyfluxestype aj_leaf mlcanopy_type
R 3491 5 1622 mlcanopyfluxestype aj_leaf$sd mlcanopy_type
R 3492 5 1623 mlcanopyfluxestype aj_leaf$p mlcanopy_type
R 3493 5 1624 mlcanopyfluxestype aj_leaf$o mlcanopy_type
R 3495 5 1626 mlcanopyfluxestype ap_leaf mlcanopy_type
R 3499 5 1630 mlcanopyfluxestype ap_leaf$sd mlcanopy_type
R 3500 5 1631 mlcanopyfluxestype ap_leaf$p mlcanopy_type
R 3501 5 1632 mlcanopyfluxestype ap_leaf$o mlcanopy_type
R 3503 5 1634 mlcanopyfluxestype agross_leaf mlcanopy_type
R 3507 5 1638 mlcanopyfluxestype agross_leaf$sd mlcanopy_type
R 3508 5 1639 mlcanopyfluxestype agross_leaf$p mlcanopy_type
R 3509 5 1640 mlcanopyfluxestype agross_leaf$o mlcanopy_type
R 3511 5 1642 mlcanopyfluxestype anet_leaf mlcanopy_type
R 3515 5 1646 mlcanopyfluxestype anet_leaf$sd mlcanopy_type
R 3516 5 1647 mlcanopyfluxestype anet_leaf$p mlcanopy_type
R 3517 5 1648 mlcanopyfluxestype anet_leaf$o mlcanopy_type
R 3519 5 1650 mlcanopyfluxestype rd_leaf mlcanopy_type
R 3523 5 1654 mlcanopyfluxestype rd_leaf$sd mlcanopy_type
R 3524 5 1655 mlcanopyfluxestype rd_leaf$p mlcanopy_type
R 3525 5 1656 mlcanopyfluxestype rd_leaf$o mlcanopy_type
R 3527 5 1658 mlcanopyfluxestype ci_leaf mlcanopy_type
R 3531 5 1662 mlcanopyfluxestype ci_leaf$sd mlcanopy_type
R 3532 5 1663 mlcanopyfluxestype ci_leaf$p mlcanopy_type
R 3533 5 1664 mlcanopyfluxestype ci_leaf$o mlcanopy_type
R 3535 5 1666 mlcanopyfluxestype cs_leaf mlcanopy_type
R 3539 5 1670 mlcanopyfluxestype cs_leaf$sd mlcanopy_type
R 3540 5 1671 mlcanopyfluxestype cs_leaf$p mlcanopy_type
R 3541 5 1672 mlcanopyfluxestype cs_leaf$o mlcanopy_type
R 3543 5 1674 mlcanopyfluxestype lwp_leaf mlcanopy_type
R 3547 5 1678 mlcanopyfluxestype lwp_leaf$sd mlcanopy_type
R 3548 5 1679 mlcanopyfluxestype lwp_leaf$p mlcanopy_type
R 3549 5 1680 mlcanopyfluxestype lwp_leaf$o mlcanopy_type
R 3551 5 1682 mlcanopyfluxestype lwp_bef_leaf mlcanopy_type
R 3555 5 1686 mlcanopyfluxestype lwp_bef_leaf$sd mlcanopy_type
R 3556 5 1687 mlcanopyfluxestype lwp_bef_leaf$p mlcanopy_type
R 3557 5 1688 mlcanopyfluxestype lwp_bef_leaf$o mlcanopy_type
R 3559 5 1690 mlcanopyfluxestype dlwp_leaf mlcanopy_type
R 3564 5 1695 mlcanopyfluxestype dlwp_leaf$sd mlcanopy_type
R 3565 5 1696 mlcanopyfluxestype dlwp_leaf$p mlcanopy_type
R 3566 5 1697 mlcanopyfluxestype dlwp_leaf$o mlcanopy_type
R 3568 5 1699 mlcanopyfluxestype lwp_hist_leaf mlcanopy_type
R 3572 5 1703 mlcanopyfluxestype lwp_hist_leaf$sd mlcanopy_type
R 3573 5 1704 mlcanopyfluxestype lwp_hist_leaf$p mlcanopy_type
R 3574 5 1705 mlcanopyfluxestype lwp_hist_leaf$o mlcanopy_type
R 3576 5 1707 mlcanopyfluxestype hs_leaf mlcanopy_type
R 3580 5 1711 mlcanopyfluxestype hs_leaf$sd mlcanopy_type
R 3581 5 1712 mlcanopyfluxestype hs_leaf$p mlcanopy_type
R 3582 5 1713 mlcanopyfluxestype hs_leaf$o mlcanopy_type
R 3584 5 1715 mlcanopyfluxestype vpd_leaf mlcanopy_type
R 3588 5 1719 mlcanopyfluxestype vpd_leaf$sd mlcanopy_type
R 3589 5 1720 mlcanopyfluxestype vpd_leaf$p mlcanopy_type
R 3590 5 1721 mlcanopyfluxestype vpd_leaf$o mlcanopy_type
R 3592 5 1723 mlcanopyfluxestype gs_leaf mlcanopy_type
R 3596 5 1727 mlcanopyfluxestype gs_leaf$sd mlcanopy_type
R 3597 5 1728 mlcanopyfluxestype gs_leaf$p mlcanopy_type
R 3598 5 1729 mlcanopyfluxestype gs_leaf$o mlcanopy_type
R 3600 5 1731 mlcanopyfluxestype gspot_leaf mlcanopy_type
R 3604 5 1735 mlcanopyfluxestype gspot_leaf$sd mlcanopy_type
R 3605 5 1736 mlcanopyfluxestype gspot_leaf$p mlcanopy_type
R 3606 5 1737 mlcanopyfluxestype gspot_leaf$o mlcanopy_type
R 3613 5 1744 mlcanopyfluxestype restart$tbp$0 mlcanopy_type
R 3614 5 1745 mlcanopyfluxestype initcold$tbp$1 mlcanopy_type
R 3615 5 1746 mlcanopyfluxestype inithistory$tbp$2 mlcanopy_type
R 3616 5 1747 mlcanopyfluxestype initallocate$tbp$3 mlcanopy_type
R 3617 5 1748 mlcanopyfluxestype init$tbp$4 mlcanopy_type
S 3643 23 5 0 0 0 3648 624 11193 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 canopyturbulence
S 3644 1 3 1 0 6 1 3643 37853 4 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nstep_ml
S 3645 1 3 1 0 6 1 3643 37862 4 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 num_filter
S 3646 7 3 1 0 1657 1 3643 37873 20000004 10003000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 filter
S 3647 1 3 3 0 1651 1 3643 37880 4 3000 A 0 0 0 0 B 0 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3648 14 5 0 0 0 1 3643 11193 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 60 4 0 0 0 0 0 0 0 0 0 0 0 0 39 0 624 0 0 0 0 canopyturbulence canopyturbulence 
F 3648 4 3644 3645 3646 3647
S 3649 6 1 0 0 7 1 3643 37894 40800006 3000 A 0 0 0 0 B 0 52 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 3650 6 1 0 0 7 1 3643 37902 40800006 3000 A 0 0 0 0 B 0 52 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 3651 6 1 0 0 7 1 3643 37910 40800006 3000 A 0 0 0 0 B 0 52 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 3652 6 1 0 0 7 1 3643 37918 40800006 3000 A 0 0 0 0 B 0 52 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3687
S 3653 23 5 0 0 0 3658 624 11226 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 hf2008
S 3654 1 3 1 0 6 1 3653 37853 4 3000 A 0 0 0 0 B 0 74 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nstep_ml
S 3655 1 3 1 0 6 1 3653 37862 4 3000 A 0 0 0 0 B 0 74 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 num_filter
S 3656 7 3 1 0 1660 1 3653 37873 20000004 10003000 A 0 0 0 0 B 0 74 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 filter
S 3657 1 3 3 0 100 1 3653 37880 4 3000 A 0 0 0 0 B 0 74 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3658 14 5 0 0 0 1 3653 11226 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 65 4 0 0 0 0 0 0 0 0 0 0 0 0 74 0 624 0 0 0 0 hf2008 hf2008 
F 3658 4 3654 3655 3656 3657
S 3659 6 1 0 0 7 1 3653 37894 40800006 3000 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 3660 6 1 0 0 7 1 3653 37902 40800006 3000 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 3661 6 1 0 0 7 1 3653 37910 40800006 3000 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 3662 6 1 0 0 7 1 3653 37927 40800006 3000 A 0 0 0 0 B 0 92 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3969
S 3663 23 5 0 0 0 3666 624 11233 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 getobu
S 3664 1 3 1 0 6 1 3663 37936 4 3000 A 0 0 0 0 B 0 211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 p
S 3665 1 3 3 0 100 1 3663 37880 4 3000 A 0 0 0 0 B 0 211 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3666 14 5 0 0 0 1 3663 11233 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 70 2 0 0 0 0 0 0 0 0 0 0 0 0 211 0 624 0 0 0 0 getobu getobu 
F 3666 2 3664 3665
S 3667 23 5 0 0 0 3674 624 11240 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 obufunc
S 3668 1 3 1 0 6 1 3667 37936 4 3000 A 0 0 0 0 B 0 263 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 p
S 3669 1 3 1 0 6 1 3667 37938 4 3000 A 0 0 0 0 B 0 263 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ic
S 3670 1 3 1 0 6 1 3667 37941 4 3000 A 0 0 0 0 B 0 263 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 il
S 3671 1 3 3 0 100 1 3667 37880 4 3000 A 0 0 0 0 B 0 263 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3672 1 3 1 0 10 1 3667 37944 4 3000 A 0 0 0 0 B 0 263 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 obu_val
S 3673 1 3 2 0 10 1 3667 37952 4 3000 A 0 0 0 0 B 0 263 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 obu_dif
S 3674 14 5 0 0 0 1 3667 11240 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 73 6 0 0 0 0 0 0 0 0 0 0 0 0 263 0 624 0 0 0 0 obufunc obufunc 
F 3674 6 3668 3669 3670 3671 3672 3673
S 3675 23 5 0 0 0 3679 624 11248 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 getbeta
S 3676 1 3 1 0 10 1 3675 37960 4 3000 A 0 0 0 0 B 0 425 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 beta_neutral
S 3677 1 3 1 0 10 1 3675 37973 4 3000 A 0 0 0 0 B 0 425 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 lcl
S 3678 1 3 2 0 10 1 3675 37977 4 3000 A 0 0 0 0 B 0 425 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 beta
S 3679 14 5 0 0 0 1 3675 11248 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 80 3 0 0 0 0 0 0 0 0 0 0 0 0 425 0 624 0 0 0 0 getbeta getbeta 
F 3679 3 3676 3677 3678
S 3680 23 5 0 0 0 3685 624 11256 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 getprsc
S 3681 1 3 1 0 10 1 3680 37960 4 3000 A 0 0 0 0 B 0 481 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 beta_neutral
S 3682 1 3 1 0 10 1 3680 37982 4 3000 A 0 0 0 0 B 0 481 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 beta_neutral_max
S 3683 1 3 1 0 10 1 3680 37973 4 3000 A 0 0 0 0 B 0 481 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 lcl
S 3684 1 3 2 0 10 1 3680 37999 4 3000 A 0 0 0 0 B 0 481 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 prsc
S 3685 14 5 0 0 0 1 3680 11256 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 84 4 0 0 0 0 0 0 0 0 0 0 0 0 481 0 624 0 0 0 0 getprsc getprsc 
F 3685 4 3681 3682 3683 3684
S 3686 23 5 0 0 0 3697 624 11264 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 getpsirsl
S 3687 1 3 1 0 10 1 3686 38004 4 3000 A 0 0 0 0 B 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 za
S 3688 1 3 1 0 10 1 3686 38007 4 3000 A 0 0 0 0 B 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 hc
S 3689 1 3 1 0 10 1 3686 38010 4 3000 A 0 0 0 0 B 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 disp
S 3690 1 3 1 0 10 1 3686 38015 4 3000 A 0 0 0 0 B 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 obu
S 3691 1 3 1 0 10 1 3686 37977 4 3000 A 0 0 0 0 B 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 beta
S 3692 1 3 1 0 10 1 3686 37999 4 3000 A 0 0 0 0 B 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 prsc
S 3693 1 3 2 0 10 1 3686 38019 4 3000 A 0 0 0 0 B 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psim
S 3694 1 3 2 0 10 1 3686 38024 4 3000 A 0 0 0 0 B 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psic
S 3695 1 3 2 0 10 1 3686 38029 4 3000 A 0 0 0 0 B 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psim2
S 3696 1 3 2 0 10 1 3686 38035 4 3000 A 0 0 0 0 B 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psim_hat2
S 3697 14 5 0 0 0 1 3686 11264 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 89 10 0 0 0 0 0 0 0 0 0 0 0 0 512 0 624 0 0 0 0 getpsirsl getpsirsl 
F 3697 10 3687 3688 3689 3690 3691 3692 3693 3694 3695 3696
S 3698 23 5 0 0 9 3701 624 11274 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 phim_monin_obukhov
S 3699 1 3 1 0 10 1 3698 38045 4 3000 A 0 0 0 0 B 0 621 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 zeta
S 3700 1 3 0 0 10 1 3698 38050 4 1003000 A 0 0 0 0 B 0 621 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 phi
S 3701 14 5 0 0 10 1 3698 11274 14 1400000 A 0 0 0 0 B 0 0 0 0 0 0 0 100 1 0 0 3700 0 0 0 0 0 0 0 0 0 621 0 624 0 0 0 0 phim_monin_obukhov phim_monin_obukhov phi
F 3701 1 3699
S 3702 23 5 0 0 9 3705 624 11293 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 phic_monin_obukhov
S 3703 1 3 1 0 10 1 3702 38045 4 3000 A 0 0 0 0 B 0 646 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 zeta
S 3704 1 3 0 0 10 1 3702 38054 4 1003000 A 0 0 0 0 B 0 646 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 phi
S 3705 14 5 0 0 10 1 3702 11293 14 1400000 A 0 0 0 0 B 0 0 0 0 0 0 0 102 1 0 0 3704 0 0 0 0 0 0 0 0 0 646 0 624 0 0 0 0 phic_monin_obukhov phic_monin_obukhov phi
F 3705 1 3703
S 3706 23 5 0 0 9 3709 624 11312 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psim_monin_obukhov
S 3707 1 3 1 0 10 1 3706 38045 4 3000 A 0 0 0 0 B 0 671 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 zeta
S 3708 1 3 0 0 10 1 3706 38058 4 1003000 A 0 0 0 0 B 0 671 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psi
S 3709 14 5 0 0 10 1 3706 11312 14 1400000 A 0 0 0 0 B 0 0 0 0 0 0 0 104 1 0 0 3708 0 0 0 0 0 0 0 0 0 671 0 624 0 0 0 0 psim_monin_obukhov psim_monin_obukhov psi
F 3709 1 3707
S 3710 23 5 0 0 9 3713 624 11331 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psic_monin_obukhov
S 3711 1 3 1 0 10 1 3710 38045 4 3000 A 0 0 0 0 B 0 699 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 zeta
S 3712 1 3 0 0 10 1 3710 38062 4 1003000 A 0 0 0 0 B 0 699 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psi
S 3713 14 5 0 0 10 1 3710 11331 14 1400000 A 0 0 0 0 B 0 0 0 0 0 0 0 106 1 0 0 3712 0 0 0 0 0 0 0 0 0 699 0 624 0 0 0 0 psic_monin_obukhov psic_monin_obukhov psi
F 3713 1 3711
S 3714 23 5 0 0 0 3721 624 11350 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 lookuppsihat
S 3715 1 3 1 0 10 1 3714 38066 4 3000 A 0 0 0 0 B 0 726 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 zdt
S 3716 1 3 1 0 10 1 3714 38070 4 3000 A 0 0 0 0 B 0 726 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dtl
S 3717 7 3 1 0 1663 1 3714 38074 800004 3000 A 0 0 0 0 B 0 726 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 zdtgrid
S 3718 7 3 1 0 1666 1 3714 38082 800004 3000 A 0 0 0 0 B 0 726 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dtlgrid
S 3719 7 3 1 0 1669 1 3714 38090 800004 3000 A 0 0 0 0 B 0 726 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psigrid
S 3720 1 3 2 0 10 1 3714 38098 4 3000 A 0 0 0 0 B 0 726 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 psihat
S 3721 14 5 0 0 0 1 3714 11350 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 108 6 0 0 0 0 0 0 0 0 0 0 0 0 726 0 624 0 0 0 0 lookuppsihat lookuppsihat 
F 3721 6 3715 3716 3717 3718 3719 3720
S 3722 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 276 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 3723 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 277 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 3724 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 41 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 3725 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 3726 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 11316 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 3727 23 5 0 0 0 3730 624 11363 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 roughnesslength
S 3728 1 3 1 0 6 1 3727 37936 4 3000 A 0 0 0 0 B 0 829 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 p
S 3729 1 3 3 0 100 1 3727 37880 4 3000 A 0 0 0 0 B 0 829 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3730 14 5 0 0 0 1 3727 11363 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 115 2 0 0 0 0 0 0 0 0 0 0 0 0 829 0 624 0 0 0 0 roughnesslength roughnesslength 
F 3730 2 3728 3729
S 3731 23 5 0 0 0 3735 624 11379 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 windprofile
S 3732 1 3 1 0 6 1 3731 37936 4 3000 A 0 0 0 0 B 0 929 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 p
S 3733 1 3 1 0 10 1 3731 38105 4 3000 A 0 0 0 0 B 0 929 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 lm_over_beta
S 3734 1 3 3 0 100 1 3731 37880 4 3000 A 0 0 0 0 B 0 929 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3735 14 5 0 0 0 1 3731 11379 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 118 3 0 0 0 0 0 0 0 0 0 0 0 0 929 0 624 0 0 0 0 windprofile windprofile 
F 3735 3 3732 3733 3734
S 3736 23 5 0 0 0 3740 624 11391 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 aerodynamicconductance
S 3737 1 3 1 0 6 1 3736 37936 4 3000 A 0 0 0 0 B 0 992 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 p
S 3738 1 3 1 0 10 1 3736 38105 4 3000 A 0 0 0 0 B 0 992 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 lm_over_beta
S 3739 1 3 3 0 100 1 3736 37880 4 3000 A 0 0 0 0 B 0 992 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3740 14 5 0 0 0 1 3736 11391 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 122 3 0 0 0 0 0 0 0 0 0 0 0 0 992 0 624 0 0 0 0 aerodynamicconductance aerodynamicconductance 
F 3740 3 3737 3738 3739
S 3741 23 5 0 0 0 3742 624 11210 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 lookuppsihatini
S 3742 14 5 0 0 0 1 3741 11210 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 126 0 0 0 0 0 0 0 0 0 0 0 0 0 1181 0 624 0 0 0 0 lookuppsihatini lookuppsihatini 
F 3742 0
A 3682 1 0 0 0 7 3651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3683 1 0 0 0 7 3649 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3684 1 0 0 0 7 3652 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3685 1 0 0 0 7 3650 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3686 1 0 0 0 7 3661 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3687 1 0 0 0 7 3659 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3688 1 0 0 0 7 3662 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3689 1 0 0 0 7 3660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3690 2 0 0 0 7 3723 0 0 0 3690 0 0 0 0 0 0 0 0 0 0 0
A 3691 2 0 0 0 7 3722 0 0 0 3691 0 0 0 0 0 0 0 0 0 0 0
A 3692 2 0 0 0 7 3725 0 0 0 3692 0 0 0 0 0 0 0 0 0 0 0
A 3693 2 0 0 0 7 3724 0 0 0 3693 0 0 0 0 0 0 0 0 0 0 0
A 3694 2 0 0 1832 7 3726 0 0 0 3694 0 0 0 0 0 0 0 0 0 0 0
Z
Z
