V34 :0x24 mlfluxprofilesolutionmod
28 MLFluxProfileSolutionMod.F90 S624 0
06/02/2026  09:20:37
use mlcanopyfluxestype private
use shr_kind_mod private
use clm_varctl private
use abortutils private
enduse
D 100 26 1869 48080 1868 7
D 1651 26 1869 48080 1868 7
D 1657 23 6 1 3682 3685 1 1 0 0 1
 11 3683 11 11 3683 3684
D 1660 23 10 1 11 3686 0 0 0 0 0
 0 3686 11 11 3686 3686
D 1663 23 10 1 11 3686 0 0 0 0 0
 0 3686 11 11 3686 3686
D 1666 23 10 1 11 3686 0 0 0 0 0
 0 3686 11 11 3686 3686
D 1669 23 10 2 3687 3689 0 0 0 0 0
 0 3686 11 11 3686 3686
 0 3688 3686 11 3688 3688
D 1672 23 10 2 3687 3689 0 0 0 0 0
 0 3686 11 11 3686 3686
 0 3688 3686 11 3688 3688
D 1675 23 10 1 11 3686 0 0 0 0 0
 0 3686 11 11 3686 3686
D 1678 23 10 1 11 3686 0 0 0 0 0
 0 3686 11 11 3686 3686
D 1681 23 10 1 11 3686 0 0 0 0 0
 0 3686 11 11 3686 3686
D 1684 23 10 1 11 3686 0 0 0 0 0
 0 3686 11 11 3686 3686
D 1687 23 10 1 11 3686 0 0 0 0 0
 0 3686 11 11 3686 3686
D 1690 23 6 1 3690 3693 1 1 0 0 1
 11 3691 11 11 3691 3692
S 624 24 0 0 0 6 1 0 5012 10005 8000 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 mlfluxprofilesolutionmod
S 626 23 0 0 0 9 1198 624 5048 4 0 A 0 0 0 0 B 400000 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 endrun
S 628 23 0 0 0 6 641 624 5066 4 0 A 0 0 0 0 B 400000 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 iulog
S 630 23 0 0 0 9 634 624 5085 4 0 A 0 0 0 0 B 400000 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 r8
R 634 16 1 shr_kind_mod shr_kind_r8
R 641 6 2 clm_varctl iulog
R 1198 14 450 abortutils endrun
S 1203 27 0 0 0 9 3631 624 11196 0 8000000 A 0 0 0 0 B 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fluxprofilesolution
S 1204 27 0 0 0 6 3640 624 11216 10 8000000 A 0 0 0 0 B 0 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 implicitfluxprofilesolution
S 1205 27 0 0 0 9 3676 624 11244 10 8000000 A 0 0 0 0 B 0 20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 wellmixed
S 1206 27 0 0 0 9 3644 624 11254 10 8000000 A 0 0 0 0 B 0 21 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 errorcheck01
S 1207 27 0 0 0 9 3662 624 11267 10 8000000 A 0 0 0 0 B 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 errorcheck02
R 1868 25 11 mlcanopyfluxestype mlcanopy_type
R 1869 5 12 mlcanopyfluxestype ztop_canopy mlcanopy_type
R 1871 5 14 mlcanopyfluxestype ztop_canopy$sd mlcanopy_type
R 1872 5 15 mlcanopyfluxestype ztop_canopy$p mlcanopy_type
R 1873 5 16 mlcanopyfluxestype ztop_canopy$o mlcanopy_type
R 1875 5 18 mlcanopyfluxestype zbot_canopy mlcanopy_type
R 1877 5 20 mlcanopyfluxestype zbot_canopy$sd mlcanopy_type
R 1878 5 21 mlcanopyfluxestype zbot_canopy$p mlcanopy_type
R 1879 5 22 mlcanopyfluxestype zbot_canopy$o mlcanopy_type
R 1881 5 24 mlcanopyfluxestype lai_canopy mlcanopy_type
R 1883 5 26 mlcanopyfluxestype lai_canopy$sd mlcanopy_type
R 1884 5 27 mlcanopyfluxestype lai_canopy$p mlcanopy_type
R 1885 5 28 mlcanopyfluxestype lai_canopy$o mlcanopy_type
R 1887 5 30 mlcanopyfluxestype sai_canopy mlcanopy_type
R 1889 5 32 mlcanopyfluxestype sai_canopy$sd mlcanopy_type
R 1890 5 33 mlcanopyfluxestype sai_canopy$p mlcanopy_type
R 1891 5 34 mlcanopyfluxestype sai_canopy$o mlcanopy_type
R 1893 5 36 mlcanopyfluxestype root_biomass_canopy mlcanopy_type
R 1895 5 38 mlcanopyfluxestype root_biomass_canopy$sd mlcanopy_type
R 1896 5 39 mlcanopyfluxestype root_biomass_canopy$p mlcanopy_type
R 1897 5 40 mlcanopyfluxestype root_biomass_canopy$o mlcanopy_type
R 1899 5 42 mlcanopyfluxestype pbeta_lai_canopy mlcanopy_type
R 1902 5 45 mlcanopyfluxestype pbeta_lai_canopy$sd mlcanopy_type
R 1903 5 46 mlcanopyfluxestype pbeta_lai_canopy$p mlcanopy_type
R 1904 5 47 mlcanopyfluxestype pbeta_lai_canopy$o mlcanopy_type
R 1906 5 49 mlcanopyfluxestype pbeta_sai_canopy mlcanopy_type
R 1909 5 52 mlcanopyfluxestype pbeta_sai_canopy$sd mlcanopy_type
R 1910 5 53 mlcanopyfluxestype pbeta_sai_canopy$p mlcanopy_type
R 1911 5 54 mlcanopyfluxestype pbeta_sai_canopy$o mlcanopy_type
R 1913 5 56 mlcanopyfluxestype zref_forcing mlcanopy_type
R 1915 5 58 mlcanopyfluxestype zref_forcing$sd mlcanopy_type
R 1916 5 59 mlcanopyfluxestype zref_forcing$p mlcanopy_type
R 1917 5 60 mlcanopyfluxestype zref_forcing$o mlcanopy_type
R 1919 5 62 mlcanopyfluxestype tref_forcing mlcanopy_type
R 1921 5 64 mlcanopyfluxestype tref_forcing$sd mlcanopy_type
R 1922 5 65 mlcanopyfluxestype tref_forcing$p mlcanopy_type
R 1923 5 66 mlcanopyfluxestype tref_forcing$o mlcanopy_type
R 1925 5 68 mlcanopyfluxestype tref_bef_forcing mlcanopy_type
R 1927 5 70 mlcanopyfluxestype tref_bef_forcing$sd mlcanopy_type
R 1928 5 71 mlcanopyfluxestype tref_bef_forcing$p mlcanopy_type
R 1929 5 72 mlcanopyfluxestype tref_bef_forcing$o mlcanopy_type
R 1931 5 74 mlcanopyfluxestype tref_cur_forcing mlcanopy_type
R 1933 5 76 mlcanopyfluxestype tref_cur_forcing$sd mlcanopy_type
R 1934 5 77 mlcanopyfluxestype tref_cur_forcing$p mlcanopy_type
R 1935 5 78 mlcanopyfluxestype tref_cur_forcing$o mlcanopy_type
R 1937 5 80 mlcanopyfluxestype tref_next_forcing mlcanopy_type
R 1939 5 82 mlcanopyfluxestype tref_next_forcing$sd mlcanopy_type
R 1940 5 83 mlcanopyfluxestype tref_next_forcing$p mlcanopy_type
R 1941 5 84 mlcanopyfluxestype tref_next_forcing$o mlcanopy_type
R 1943 5 86 mlcanopyfluxestype qref_forcing mlcanopy_type
R 1945 5 88 mlcanopyfluxestype qref_forcing$sd mlcanopy_type
R 1946 5 89 mlcanopyfluxestype qref_forcing$p mlcanopy_type
R 1947 5 90 mlcanopyfluxestype qref_forcing$o mlcanopy_type
R 1949 5 92 mlcanopyfluxestype qref_bef_forcing mlcanopy_type
R 1951 5 94 mlcanopyfluxestype qref_bef_forcing$sd mlcanopy_type
R 1952 5 95 mlcanopyfluxestype qref_bef_forcing$p mlcanopy_type
R 1953 5 96 mlcanopyfluxestype qref_bef_forcing$o mlcanopy_type
R 1955 5 98 mlcanopyfluxestype qref_cur_forcing mlcanopy_type
R 1957 5 100 mlcanopyfluxestype qref_cur_forcing$sd mlcanopy_type
R 1958 5 101 mlcanopyfluxestype qref_cur_forcing$p mlcanopy_type
R 1959 5 102 mlcanopyfluxestype qref_cur_forcing$o mlcanopy_type
R 1961 5 104 mlcanopyfluxestype qref_next_forcing mlcanopy_type
R 1963 5 106 mlcanopyfluxestype qref_next_forcing$sd mlcanopy_type
R 1964 5 107 mlcanopyfluxestype qref_next_forcing$p mlcanopy_type
R 1965 5 108 mlcanopyfluxestype qref_next_forcing$o mlcanopy_type
R 1967 5 110 mlcanopyfluxestype uref_forcing mlcanopy_type
R 1969 5 112 mlcanopyfluxestype uref_forcing$sd mlcanopy_type
R 1970 5 113 mlcanopyfluxestype uref_forcing$p mlcanopy_type
R 1971 5 114 mlcanopyfluxestype uref_forcing$o mlcanopy_type
R 1973 5 116 mlcanopyfluxestype uref_bef_forcing mlcanopy_type
R 1975 5 118 mlcanopyfluxestype uref_bef_forcing$sd mlcanopy_type
R 1976 5 119 mlcanopyfluxestype uref_bef_forcing$p mlcanopy_type
R 1977 5 120 mlcanopyfluxestype uref_bef_forcing$o mlcanopy_type
R 1979 5 122 mlcanopyfluxestype uref_cur_forcing mlcanopy_type
R 1981 5 124 mlcanopyfluxestype uref_cur_forcing$sd mlcanopy_type
R 1982 5 125 mlcanopyfluxestype uref_cur_forcing$p mlcanopy_type
R 1983 5 126 mlcanopyfluxestype uref_cur_forcing$o mlcanopy_type
R 1985 5 128 mlcanopyfluxestype uref_next_forcing mlcanopy_type
R 1987 5 130 mlcanopyfluxestype uref_next_forcing$sd mlcanopy_type
R 1988 5 131 mlcanopyfluxestype uref_next_forcing$p mlcanopy_type
R 1989 5 132 mlcanopyfluxestype uref_next_forcing$o mlcanopy_type
R 1991 5 134 mlcanopyfluxestype pref_forcing mlcanopy_type
R 1993 5 136 mlcanopyfluxestype pref_forcing$sd mlcanopy_type
R 1994 5 137 mlcanopyfluxestype pref_forcing$p mlcanopy_type
R 1995 5 138 mlcanopyfluxestype pref_forcing$o mlcanopy_type
R 1997 5 140 mlcanopyfluxestype pref_bef_forcing mlcanopy_type
R 1999 5 142 mlcanopyfluxestype pref_bef_forcing$sd mlcanopy_type
R 2000 5 143 mlcanopyfluxestype pref_bef_forcing$p mlcanopy_type
R 2001 5 144 mlcanopyfluxestype pref_bef_forcing$o mlcanopy_type
R 2003 5 146 mlcanopyfluxestype pref_cur_forcing mlcanopy_type
R 2005 5 148 mlcanopyfluxestype pref_cur_forcing$sd mlcanopy_type
R 2006 5 149 mlcanopyfluxestype pref_cur_forcing$p mlcanopy_type
R 2007 5 150 mlcanopyfluxestype pref_cur_forcing$o mlcanopy_type
R 2009 5 152 mlcanopyfluxestype pref_next_forcing mlcanopy_type
R 2011 5 154 mlcanopyfluxestype pref_next_forcing$sd mlcanopy_type
R 2012 5 155 mlcanopyfluxestype pref_next_forcing$p mlcanopy_type
R 2013 5 156 mlcanopyfluxestype pref_next_forcing$o mlcanopy_type
R 2015 5 158 mlcanopyfluxestype co2ref_forcing mlcanopy_type
R 2017 5 160 mlcanopyfluxestype co2ref_forcing$sd mlcanopy_type
R 2018 5 161 mlcanopyfluxestype co2ref_forcing$p mlcanopy_type
R 2019 5 162 mlcanopyfluxestype co2ref_forcing$o mlcanopy_type
R 2021 5 164 mlcanopyfluxestype co2ref_bef_forcing mlcanopy_type
R 2023 5 166 mlcanopyfluxestype co2ref_bef_forcing$sd mlcanopy_type
R 2024 5 167 mlcanopyfluxestype co2ref_bef_forcing$p mlcanopy_type
R 2025 5 168 mlcanopyfluxestype co2ref_bef_forcing$o mlcanopy_type
R 2027 5 170 mlcanopyfluxestype co2ref_cur_forcing mlcanopy_type
R 2029 5 172 mlcanopyfluxestype co2ref_cur_forcing$sd mlcanopy_type
R 2030 5 173 mlcanopyfluxestype co2ref_cur_forcing$p mlcanopy_type
R 2031 5 174 mlcanopyfluxestype co2ref_cur_forcing$o mlcanopy_type
R 2033 5 176 mlcanopyfluxestype co2ref_next_forcing mlcanopy_type
R 2035 5 178 mlcanopyfluxestype co2ref_next_forcing$sd mlcanopy_type
R 2036 5 179 mlcanopyfluxestype co2ref_next_forcing$p mlcanopy_type
R 2037 5 180 mlcanopyfluxestype co2ref_next_forcing$o mlcanopy_type
R 2039 5 182 mlcanopyfluxestype o2ref_forcing mlcanopy_type
R 2041 5 184 mlcanopyfluxestype o2ref_forcing$sd mlcanopy_type
R 2042 5 185 mlcanopyfluxestype o2ref_forcing$p mlcanopy_type
R 2043 5 186 mlcanopyfluxestype o2ref_forcing$o mlcanopy_type
R 2045 5 188 mlcanopyfluxestype swskyb_forcing mlcanopy_type
R 2048 5 191 mlcanopyfluxestype swskyb_forcing$sd mlcanopy_type
R 2049 5 192 mlcanopyfluxestype swskyb_forcing$p mlcanopy_type
R 2050 5 193 mlcanopyfluxestype swskyb_forcing$o mlcanopy_type
R 2052 5 195 mlcanopyfluxestype swskyb_bef_forcing mlcanopy_type
R 2055 5 198 mlcanopyfluxestype swskyb_bef_forcing$sd mlcanopy_type
R 2056 5 199 mlcanopyfluxestype swskyb_bef_forcing$p mlcanopy_type
R 2057 5 200 mlcanopyfluxestype swskyb_bef_forcing$o mlcanopy_type
R 2059 5 202 mlcanopyfluxestype swskyb_cur_forcing mlcanopy_type
R 2062 5 205 mlcanopyfluxestype swskyb_cur_forcing$sd mlcanopy_type
R 2063 5 206 mlcanopyfluxestype swskyb_cur_forcing$p mlcanopy_type
R 2064 5 207 mlcanopyfluxestype swskyb_cur_forcing$o mlcanopy_type
R 2066 5 209 mlcanopyfluxestype swskyb_next_forcing mlcanopy_type
R 2069 5 212 mlcanopyfluxestype swskyb_next_forcing$sd mlcanopy_type
R 2070 5 213 mlcanopyfluxestype swskyb_next_forcing$p mlcanopy_type
R 2071 5 214 mlcanopyfluxestype swskyb_next_forcing$o mlcanopy_type
R 2073 5 216 mlcanopyfluxestype swskyd_forcing mlcanopy_type
R 2076 5 219 mlcanopyfluxestype swskyd_forcing$sd mlcanopy_type
R 2077 5 220 mlcanopyfluxestype swskyd_forcing$p mlcanopy_type
R 2078 5 221 mlcanopyfluxestype swskyd_forcing$o mlcanopy_type
R 2080 5 223 mlcanopyfluxestype swskyd_bef_forcing mlcanopy_type
R 2083 5 226 mlcanopyfluxestype swskyd_bef_forcing$sd mlcanopy_type
R 2084 5 227 mlcanopyfluxestype swskyd_bef_forcing$p mlcanopy_type
R 2085 5 228 mlcanopyfluxestype swskyd_bef_forcing$o mlcanopy_type
R 2087 5 230 mlcanopyfluxestype swskyd_cur_forcing mlcanopy_type
R 2090 5 233 mlcanopyfluxestype swskyd_cur_forcing$sd mlcanopy_type
R 2091 5 234 mlcanopyfluxestype swskyd_cur_forcing$p mlcanopy_type
R 2092 5 235 mlcanopyfluxestype swskyd_cur_forcing$o mlcanopy_type
R 2094 5 237 mlcanopyfluxestype swskyd_next_forcing mlcanopy_type
R 2097 5 240 mlcanopyfluxestype swskyd_next_forcing$sd mlcanopy_type
R 2098 5 241 mlcanopyfluxestype swskyd_next_forcing$p mlcanopy_type
R 2099 5 242 mlcanopyfluxestype swskyd_next_forcing$o mlcanopy_type
R 2101 5 244 mlcanopyfluxestype lwsky_forcing mlcanopy_type
R 2103 5 246 mlcanopyfluxestype lwsky_forcing$sd mlcanopy_type
R 2104 5 247 mlcanopyfluxestype lwsky_forcing$p mlcanopy_type
R 2105 5 248 mlcanopyfluxestype lwsky_forcing$o mlcanopy_type
R 2107 5 250 mlcanopyfluxestype lwsky_bef_forcing mlcanopy_type
R 2109 5 252 mlcanopyfluxestype lwsky_bef_forcing$sd mlcanopy_type
R 2110 5 253 mlcanopyfluxestype lwsky_bef_forcing$p mlcanopy_type
R 2111 5 254 mlcanopyfluxestype lwsky_bef_forcing$o mlcanopy_type
R 2113 5 256 mlcanopyfluxestype lwsky_cur_forcing mlcanopy_type
R 2115 5 258 mlcanopyfluxestype lwsky_cur_forcing$sd mlcanopy_type
R 2116 5 259 mlcanopyfluxestype lwsky_cur_forcing$p mlcanopy_type
R 2117 5 260 mlcanopyfluxestype lwsky_cur_forcing$o mlcanopy_type
R 2119 5 262 mlcanopyfluxestype lwsky_next_forcing mlcanopy_type
R 2121 5 264 mlcanopyfluxestype lwsky_next_forcing$sd mlcanopy_type
R 2122 5 265 mlcanopyfluxestype lwsky_next_forcing$p mlcanopy_type
R 2123 5 266 mlcanopyfluxestype lwsky_next_forcing$o mlcanopy_type
R 2125 5 268 mlcanopyfluxestype qflx_rain_forcing mlcanopy_type
R 2127 5 270 mlcanopyfluxestype qflx_rain_forcing$sd mlcanopy_type
R 2128 5 271 mlcanopyfluxestype qflx_rain_forcing$p mlcanopy_type
R 2129 5 272 mlcanopyfluxestype qflx_rain_forcing$o mlcanopy_type
R 2131 5 274 mlcanopyfluxestype qflx_snow_forcing mlcanopy_type
R 2133 5 276 mlcanopyfluxestype qflx_snow_forcing$sd mlcanopy_type
R 2134 5 277 mlcanopyfluxestype qflx_snow_forcing$p mlcanopy_type
R 2135 5 278 mlcanopyfluxestype qflx_snow_forcing$o mlcanopy_type
R 2137 5 280 mlcanopyfluxestype tacclim_forcing mlcanopy_type
R 2139 5 282 mlcanopyfluxestype tacclim_forcing$sd mlcanopy_type
R 2140 5 283 mlcanopyfluxestype tacclim_forcing$p mlcanopy_type
R 2141 5 284 mlcanopyfluxestype tacclim_forcing$o mlcanopy_type
R 2143 5 286 mlcanopyfluxestype eref_forcing mlcanopy_type
R 2145 5 288 mlcanopyfluxestype eref_forcing$sd mlcanopy_type
R 2146 5 289 mlcanopyfluxestype eref_forcing$p mlcanopy_type
R 2147 5 290 mlcanopyfluxestype eref_forcing$o mlcanopy_type
R 2149 5 292 mlcanopyfluxestype thref_forcing mlcanopy_type
R 2151 5 294 mlcanopyfluxestype thref_forcing$sd mlcanopy_type
R 2152 5 295 mlcanopyfluxestype thref_forcing$p mlcanopy_type
R 2153 5 296 mlcanopyfluxestype thref_forcing$o mlcanopy_type
R 2155 5 298 mlcanopyfluxestype thvref_forcing mlcanopy_type
R 2157 5 300 mlcanopyfluxestype thvref_forcing$sd mlcanopy_type
R 2158 5 301 mlcanopyfluxestype thvref_forcing$p mlcanopy_type
R 2159 5 302 mlcanopyfluxestype thvref_forcing$o mlcanopy_type
R 2161 5 304 mlcanopyfluxestype rhoair_forcing mlcanopy_type
R 2163 5 306 mlcanopyfluxestype rhoair_forcing$sd mlcanopy_type
R 2164 5 307 mlcanopyfluxestype rhoair_forcing$p mlcanopy_type
R 2165 5 308 mlcanopyfluxestype rhoair_forcing$o mlcanopy_type
R 2167 5 310 mlcanopyfluxestype rhomol_forcing mlcanopy_type
R 2169 5 312 mlcanopyfluxestype rhomol_forcing$sd mlcanopy_type
R 2170 5 313 mlcanopyfluxestype rhomol_forcing$p mlcanopy_type
R 2171 5 314 mlcanopyfluxestype rhomol_forcing$o mlcanopy_type
R 2173 5 316 mlcanopyfluxestype mmair_forcing mlcanopy_type
R 2175 5 318 mlcanopyfluxestype mmair_forcing$sd mlcanopy_type
R 2176 5 319 mlcanopyfluxestype mmair_forcing$p mlcanopy_type
R 2177 5 320 mlcanopyfluxestype mmair_forcing$o mlcanopy_type
R 2179 5 322 mlcanopyfluxestype cpair_forcing mlcanopy_type
R 2181 5 324 mlcanopyfluxestype cpair_forcing$sd mlcanopy_type
R 2182 5 325 mlcanopyfluxestype cpair_forcing$p mlcanopy_type
R 2183 5 326 mlcanopyfluxestype cpair_forcing$o mlcanopy_type
R 2185 5 328 mlcanopyfluxestype solar_zen_forcing mlcanopy_type
R 2187 5 330 mlcanopyfluxestype solar_zen_forcing$sd mlcanopy_type
R 2188 5 331 mlcanopyfluxestype solar_zen_forcing$p mlcanopy_type
R 2189 5 332 mlcanopyfluxestype solar_zen_forcing$o mlcanopy_type
R 2191 5 334 mlcanopyfluxestype swveg_canopy mlcanopy_type
R 2194 5 337 mlcanopyfluxestype swveg_canopy$sd mlcanopy_type
R 2195 5 338 mlcanopyfluxestype swveg_canopy$p mlcanopy_type
R 2196 5 339 mlcanopyfluxestype swveg_canopy$o mlcanopy_type
R 2198 5 341 mlcanopyfluxestype swvegsun_canopy mlcanopy_type
R 2201 5 344 mlcanopyfluxestype swvegsun_canopy$sd mlcanopy_type
R 2202 5 345 mlcanopyfluxestype swvegsun_canopy$p mlcanopy_type
R 2203 5 346 mlcanopyfluxestype swvegsun_canopy$o mlcanopy_type
R 2205 5 348 mlcanopyfluxestype swvegsha_canopy mlcanopy_type
R 2208 5 351 mlcanopyfluxestype swvegsha_canopy$sd mlcanopy_type
R 2209 5 352 mlcanopyfluxestype swvegsha_canopy$p mlcanopy_type
R 2210 5 353 mlcanopyfluxestype swvegsha_canopy$o mlcanopy_type
R 2212 5 355 mlcanopyfluxestype lwveg_canopy mlcanopy_type
R 2214 5 357 mlcanopyfluxestype lwveg_canopy$sd mlcanopy_type
R 2215 5 358 mlcanopyfluxestype lwveg_canopy$p mlcanopy_type
R 2216 5 359 mlcanopyfluxestype lwveg_canopy$o mlcanopy_type
R 2218 5 361 mlcanopyfluxestype lwvegsun_canopy mlcanopy_type
R 2220 5 363 mlcanopyfluxestype lwvegsun_canopy$sd mlcanopy_type
R 2221 5 364 mlcanopyfluxestype lwvegsun_canopy$p mlcanopy_type
R 2222 5 365 mlcanopyfluxestype lwvegsun_canopy$o mlcanopy_type
R 2224 5 367 mlcanopyfluxestype lwvegsha_canopy mlcanopy_type
R 2226 5 369 mlcanopyfluxestype lwvegsha_canopy$sd mlcanopy_type
R 2227 5 370 mlcanopyfluxestype lwvegsha_canopy$p mlcanopy_type
R 2228 5 371 mlcanopyfluxestype lwvegsha_canopy$o mlcanopy_type
R 2230 5 373 mlcanopyfluxestype shveg_canopy mlcanopy_type
R 2232 5 375 mlcanopyfluxestype shveg_canopy$sd mlcanopy_type
R 2233 5 376 mlcanopyfluxestype shveg_canopy$p mlcanopy_type
R 2234 5 377 mlcanopyfluxestype shveg_canopy$o mlcanopy_type
R 2236 5 379 mlcanopyfluxestype shvegsun_canopy mlcanopy_type
R 2238 5 381 mlcanopyfluxestype shvegsun_canopy$sd mlcanopy_type
R 2239 5 382 mlcanopyfluxestype shvegsun_canopy$p mlcanopy_type
R 2240 5 383 mlcanopyfluxestype shvegsun_canopy$o mlcanopy_type
R 2242 5 385 mlcanopyfluxestype shvegsha_canopy mlcanopy_type
R 2244 5 387 mlcanopyfluxestype shvegsha_canopy$sd mlcanopy_type
R 2245 5 388 mlcanopyfluxestype shvegsha_canopy$p mlcanopy_type
R 2246 5 389 mlcanopyfluxestype shvegsha_canopy$o mlcanopy_type
R 2248 5 391 mlcanopyfluxestype lhveg_canopy mlcanopy_type
R 2250 5 393 mlcanopyfluxestype lhveg_canopy$sd mlcanopy_type
R 2251 5 394 mlcanopyfluxestype lhveg_canopy$p mlcanopy_type
R 2252 5 395 mlcanopyfluxestype lhveg_canopy$o mlcanopy_type
R 2254 5 397 mlcanopyfluxestype lhvegsun_canopy mlcanopy_type
R 2256 5 399 mlcanopyfluxestype lhvegsun_canopy$sd mlcanopy_type
R 2257 5 400 mlcanopyfluxestype lhvegsun_canopy$p mlcanopy_type
R 2258 5 401 mlcanopyfluxestype lhvegsun_canopy$o mlcanopy_type
R 2260 5 403 mlcanopyfluxestype lhvegsha_canopy mlcanopy_type
R 2262 5 405 mlcanopyfluxestype lhvegsha_canopy$sd mlcanopy_type
R 2263 5 406 mlcanopyfluxestype lhvegsha_canopy$p mlcanopy_type
R 2264 5 407 mlcanopyfluxestype lhvegsha_canopy$o mlcanopy_type
R 2266 5 409 mlcanopyfluxestype etveg_canopy mlcanopy_type
R 2268 5 411 mlcanopyfluxestype etveg_canopy$sd mlcanopy_type
R 2269 5 412 mlcanopyfluxestype etveg_canopy$p mlcanopy_type
R 2270 5 413 mlcanopyfluxestype etveg_canopy$o mlcanopy_type
R 2272 5 415 mlcanopyfluxestype etvegsun_canopy mlcanopy_type
R 2274 5 417 mlcanopyfluxestype etvegsun_canopy$sd mlcanopy_type
R 2275 5 418 mlcanopyfluxestype etvegsun_canopy$p mlcanopy_type
R 2276 5 419 mlcanopyfluxestype etvegsun_canopy$o mlcanopy_type
R 2278 5 421 mlcanopyfluxestype etvegsha_canopy mlcanopy_type
R 2280 5 423 mlcanopyfluxestype etvegsha_canopy$sd mlcanopy_type
R 2281 5 424 mlcanopyfluxestype etvegsha_canopy$p mlcanopy_type
R 2282 5 425 mlcanopyfluxestype etvegsha_canopy$o mlcanopy_type
R 2284 5 427 mlcanopyfluxestype trveg_canopy mlcanopy_type
R 2286 5 429 mlcanopyfluxestype trveg_canopy$sd mlcanopy_type
R 2287 5 430 mlcanopyfluxestype trveg_canopy$p mlcanopy_type
R 2288 5 431 mlcanopyfluxestype trveg_canopy$o mlcanopy_type
R 2290 5 433 mlcanopyfluxestype evveg_canopy mlcanopy_type
R 2292 5 435 mlcanopyfluxestype evveg_canopy$sd mlcanopy_type
R 2293 5 436 mlcanopyfluxestype evveg_canopy$p mlcanopy_type
R 2294 5 437 mlcanopyfluxestype evveg_canopy$o mlcanopy_type
R 2296 5 439 mlcanopyfluxestype gppveg_canopy mlcanopy_type
R 2298 5 441 mlcanopyfluxestype gppveg_canopy$sd mlcanopy_type
R 2299 5 442 mlcanopyfluxestype gppveg_canopy$p mlcanopy_type
R 2300 5 443 mlcanopyfluxestype gppveg_canopy$o mlcanopy_type
R 2302 5 445 mlcanopyfluxestype gppvegsun_canopy mlcanopy_type
R 2304 5 447 mlcanopyfluxestype gppvegsun_canopy$sd mlcanopy_type
R 2305 5 448 mlcanopyfluxestype gppvegsun_canopy$p mlcanopy_type
R 2306 5 449 mlcanopyfluxestype gppvegsun_canopy$o mlcanopy_type
R 2308 5 451 mlcanopyfluxestype gppvegsha_canopy mlcanopy_type
R 2310 5 453 mlcanopyfluxestype gppvegsha_canopy$sd mlcanopy_type
R 2311 5 454 mlcanopyfluxestype gppvegsha_canopy$p mlcanopy_type
R 2312 5 455 mlcanopyfluxestype gppvegsha_canopy$o mlcanopy_type
R 2314 5 457 mlcanopyfluxestype vcmax25veg_canopy mlcanopy_type
R 2316 5 459 mlcanopyfluxestype vcmax25veg_canopy$sd mlcanopy_type
R 2317 5 460 mlcanopyfluxestype vcmax25veg_canopy$p mlcanopy_type
R 2318 5 461 mlcanopyfluxestype vcmax25veg_canopy$o mlcanopy_type
R 2320 5 463 mlcanopyfluxestype vcmax25sun_canopy mlcanopy_type
R 2322 5 465 mlcanopyfluxestype vcmax25sun_canopy$sd mlcanopy_type
R 2323 5 466 mlcanopyfluxestype vcmax25sun_canopy$p mlcanopy_type
R 2324 5 467 mlcanopyfluxestype vcmax25sun_canopy$o mlcanopy_type
R 2326 5 469 mlcanopyfluxestype vcmax25sha_canopy mlcanopy_type
R 2328 5 471 mlcanopyfluxestype vcmax25sha_canopy$sd mlcanopy_type
R 2329 5 472 mlcanopyfluxestype vcmax25sha_canopy$p mlcanopy_type
R 2330 5 473 mlcanopyfluxestype vcmax25sha_canopy$o mlcanopy_type
R 2332 5 475 mlcanopyfluxestype gsveg_canopy mlcanopy_type
R 2334 5 477 mlcanopyfluxestype gsveg_canopy$sd mlcanopy_type
R 2335 5 478 mlcanopyfluxestype gsveg_canopy$p mlcanopy_type
R 2336 5 479 mlcanopyfluxestype gsveg_canopy$o mlcanopy_type
R 2338 5 481 mlcanopyfluxestype gsvegsun_canopy mlcanopy_type
R 2340 5 483 mlcanopyfluxestype gsvegsun_canopy$sd mlcanopy_type
R 2341 5 484 mlcanopyfluxestype gsvegsun_canopy$p mlcanopy_type
R 2342 5 485 mlcanopyfluxestype gsvegsun_canopy$o mlcanopy_type
R 2344 5 487 mlcanopyfluxestype gsvegsha_canopy mlcanopy_type
R 2346 5 489 mlcanopyfluxestype gsvegsha_canopy$sd mlcanopy_type
R 2347 5 490 mlcanopyfluxestype gsvegsha_canopy$p mlcanopy_type
R 2348 5 491 mlcanopyfluxestype gsvegsha_canopy$o mlcanopy_type
R 2350 5 493 mlcanopyfluxestype windveg_canopy mlcanopy_type
R 2352 5 495 mlcanopyfluxestype windveg_canopy$sd mlcanopy_type
R 2353 5 496 mlcanopyfluxestype windveg_canopy$p mlcanopy_type
R 2354 5 497 mlcanopyfluxestype windveg_canopy$o mlcanopy_type
R 2356 5 499 mlcanopyfluxestype windvegsun_canopy mlcanopy_type
R 2358 5 501 mlcanopyfluxestype windvegsun_canopy$sd mlcanopy_type
R 2359 5 502 mlcanopyfluxestype windvegsun_canopy$p mlcanopy_type
R 2360 5 503 mlcanopyfluxestype windvegsun_canopy$o mlcanopy_type
R 2362 5 505 mlcanopyfluxestype windvegsha_canopy mlcanopy_type
R 2364 5 507 mlcanopyfluxestype windvegsha_canopy$sd mlcanopy_type
R 2365 5 508 mlcanopyfluxestype windvegsha_canopy$p mlcanopy_type
R 2366 5 509 mlcanopyfluxestype windvegsha_canopy$o mlcanopy_type
R 2368 5 511 mlcanopyfluxestype tlveg_canopy mlcanopy_type
R 2370 5 513 mlcanopyfluxestype tlveg_canopy$sd mlcanopy_type
R 2371 5 514 mlcanopyfluxestype tlveg_canopy$p mlcanopy_type
R 2372 5 515 mlcanopyfluxestype tlveg_canopy$o mlcanopy_type
R 2374 5 517 mlcanopyfluxestype tlvegsun_canopy mlcanopy_type
R 2376 5 519 mlcanopyfluxestype tlvegsun_canopy$sd mlcanopy_type
R 2377 5 520 mlcanopyfluxestype tlvegsun_canopy$p mlcanopy_type
R 2378 5 521 mlcanopyfluxestype tlvegsun_canopy$o mlcanopy_type
R 2380 5 523 mlcanopyfluxestype tlvegsha_canopy mlcanopy_type
R 2382 5 525 mlcanopyfluxestype tlvegsha_canopy$sd mlcanopy_type
R 2383 5 526 mlcanopyfluxestype tlvegsha_canopy$p mlcanopy_type
R 2384 5 527 mlcanopyfluxestype tlvegsha_canopy$o mlcanopy_type
R 2386 5 529 mlcanopyfluxestype taveg_canopy mlcanopy_type
R 2388 5 531 mlcanopyfluxestype taveg_canopy$sd mlcanopy_type
R 2389 5 532 mlcanopyfluxestype taveg_canopy$p mlcanopy_type
R 2390 5 533 mlcanopyfluxestype taveg_canopy$o mlcanopy_type
R 2392 5 535 mlcanopyfluxestype tavegsun_canopy mlcanopy_type
R 2394 5 537 mlcanopyfluxestype tavegsun_canopy$sd mlcanopy_type
R 2395 5 538 mlcanopyfluxestype tavegsun_canopy$p mlcanopy_type
R 2396 5 539 mlcanopyfluxestype tavegsun_canopy$o mlcanopy_type
R 2398 5 541 mlcanopyfluxestype tavegsha_canopy mlcanopy_type
R 2400 5 543 mlcanopyfluxestype tavegsha_canopy$sd mlcanopy_type
R 2401 5 544 mlcanopyfluxestype tavegsha_canopy$p mlcanopy_type
R 2402 5 545 mlcanopyfluxestype tavegsha_canopy$o mlcanopy_type
R 2404 5 547 mlcanopyfluxestype laisun_canopy mlcanopy_type
R 2406 5 549 mlcanopyfluxestype laisun_canopy$sd mlcanopy_type
R 2407 5 550 mlcanopyfluxestype laisun_canopy$p mlcanopy_type
R 2408 5 551 mlcanopyfluxestype laisun_canopy$o mlcanopy_type
R 2410 5 553 mlcanopyfluxestype laisha_canopy mlcanopy_type
R 2412 5 555 mlcanopyfluxestype laisha_canopy$sd mlcanopy_type
R 2413 5 556 mlcanopyfluxestype laisha_canopy$p mlcanopy_type
R 2414 5 557 mlcanopyfluxestype laisha_canopy$o mlcanopy_type
R 2416 5 559 mlcanopyfluxestype albcan_canopy mlcanopy_type
R 2419 5 562 mlcanopyfluxestype albcan_canopy$sd mlcanopy_type
R 2420 5 563 mlcanopyfluxestype albcan_canopy$p mlcanopy_type
R 2421 5 564 mlcanopyfluxestype albcan_canopy$o mlcanopy_type
R 2423 5 566 mlcanopyfluxestype lwup_canopy mlcanopy_type
R 2425 5 568 mlcanopyfluxestype lwup_canopy$sd mlcanopy_type
R 2426 5 569 mlcanopyfluxestype lwup_canopy$p mlcanopy_type
R 2427 5 570 mlcanopyfluxestype lwup_canopy$o mlcanopy_type
R 2429 5 572 mlcanopyfluxestype rnet_canopy mlcanopy_type
R 2431 5 574 mlcanopyfluxestype rnet_canopy$sd mlcanopy_type
R 2432 5 575 mlcanopyfluxestype rnet_canopy$p mlcanopy_type
R 2433 5 576 mlcanopyfluxestype rnet_canopy$o mlcanopy_type
R 2435 5 578 mlcanopyfluxestype shflx_canopy mlcanopy_type
R 2437 5 580 mlcanopyfluxestype shflx_canopy$sd mlcanopy_type
R 2438 5 581 mlcanopyfluxestype shflx_canopy$p mlcanopy_type
R 2439 5 582 mlcanopyfluxestype shflx_canopy$o mlcanopy_type
R 2441 5 584 mlcanopyfluxestype lhflx_canopy mlcanopy_type
R 2443 5 586 mlcanopyfluxestype lhflx_canopy$sd mlcanopy_type
R 2444 5 587 mlcanopyfluxestype lhflx_canopy$p mlcanopy_type
R 2445 5 588 mlcanopyfluxestype lhflx_canopy$o mlcanopy_type
R 2447 5 590 mlcanopyfluxestype etflx_canopy mlcanopy_type
R 2449 5 592 mlcanopyfluxestype etflx_canopy$sd mlcanopy_type
R 2450 5 593 mlcanopyfluxestype etflx_canopy$p mlcanopy_type
R 2451 5 594 mlcanopyfluxestype etflx_canopy$o mlcanopy_type
R 2453 5 596 mlcanopyfluxestype stflx_air_canopy mlcanopy_type
R 2455 5 598 mlcanopyfluxestype stflx_air_canopy$sd mlcanopy_type
R 2456 5 599 mlcanopyfluxestype stflx_air_canopy$p mlcanopy_type
R 2457 5 600 mlcanopyfluxestype stflx_air_canopy$o mlcanopy_type
R 2459 5 602 mlcanopyfluxestype stflx_veg_canopy mlcanopy_type
R 2461 5 604 mlcanopyfluxestype stflx_veg_canopy$sd mlcanopy_type
R 2462 5 605 mlcanopyfluxestype stflx_veg_canopy$p mlcanopy_type
R 2463 5 606 mlcanopyfluxestype stflx_veg_canopy$o mlcanopy_type
R 2465 5 608 mlcanopyfluxestype ustar_canopy mlcanopy_type
R 2467 5 610 mlcanopyfluxestype ustar_canopy$sd mlcanopy_type
R 2468 5 611 mlcanopyfluxestype ustar_canopy$p mlcanopy_type
R 2469 5 612 mlcanopyfluxestype ustar_canopy$o mlcanopy_type
R 2471 5 614 mlcanopyfluxestype gac_to_hc_canopy mlcanopy_type
R 2473 5 616 mlcanopyfluxestype gac_to_hc_canopy$sd mlcanopy_type
R 2474 5 617 mlcanopyfluxestype gac_to_hc_canopy$p mlcanopy_type
R 2475 5 618 mlcanopyfluxestype gac_to_hc_canopy$o mlcanopy_type
R 2477 5 620 mlcanopyfluxestype qflx_intr_canopy mlcanopy_type
R 2479 5 622 mlcanopyfluxestype qflx_intr_canopy$sd mlcanopy_type
R 2480 5 623 mlcanopyfluxestype qflx_intr_canopy$p mlcanopy_type
R 2481 5 624 mlcanopyfluxestype qflx_intr_canopy$o mlcanopy_type
R 2483 5 626 mlcanopyfluxestype qflx_tflrain_canopy mlcanopy_type
R 2485 5 628 mlcanopyfluxestype qflx_tflrain_canopy$sd mlcanopy_type
R 2486 5 629 mlcanopyfluxestype qflx_tflrain_canopy$p mlcanopy_type
R 2487 5 630 mlcanopyfluxestype qflx_tflrain_canopy$o mlcanopy_type
R 2489 5 632 mlcanopyfluxestype qflx_tflsnow_canopy mlcanopy_type
R 2491 5 634 mlcanopyfluxestype qflx_tflsnow_canopy$sd mlcanopy_type
R 2492 5 635 mlcanopyfluxestype qflx_tflsnow_canopy$p mlcanopy_type
R 2493 5 636 mlcanopyfluxestype qflx_tflsnow_canopy$o mlcanopy_type
R 2495 5 638 mlcanopyfluxestype uaf_canopy mlcanopy_type
R 2497 5 640 mlcanopyfluxestype uaf_canopy$sd mlcanopy_type
R 2498 5 641 mlcanopyfluxestype uaf_canopy$p mlcanopy_type
R 2499 5 642 mlcanopyfluxestype uaf_canopy$o mlcanopy_type
R 2501 5 644 mlcanopyfluxestype taf_canopy mlcanopy_type
R 2503 5 646 mlcanopyfluxestype taf_canopy$sd mlcanopy_type
R 2504 5 647 mlcanopyfluxestype taf_canopy$p mlcanopy_type
R 2505 5 648 mlcanopyfluxestype taf_canopy$o mlcanopy_type
R 2507 5 650 mlcanopyfluxestype qaf_canopy mlcanopy_type
R 2509 5 652 mlcanopyfluxestype qaf_canopy$sd mlcanopy_type
R 2510 5 653 mlcanopyfluxestype qaf_canopy$p mlcanopy_type
R 2511 5 654 mlcanopyfluxestype qaf_canopy$o mlcanopy_type
R 2513 5 656 mlcanopyfluxestype fracminlwp_canopy mlcanopy_type
R 2515 5 658 mlcanopyfluxestype fracminlwp_canopy$sd mlcanopy_type
R 2516 5 659 mlcanopyfluxestype fracminlwp_canopy$p mlcanopy_type
R 2517 5 660 mlcanopyfluxestype fracminlwp_canopy$o mlcanopy_type
R 2519 5 662 mlcanopyfluxestype obu_canopy mlcanopy_type
R 2521 5 664 mlcanopyfluxestype obu_canopy$sd mlcanopy_type
R 2522 5 665 mlcanopyfluxestype obu_canopy$p mlcanopy_type
R 2523 5 666 mlcanopyfluxestype obu_canopy$o mlcanopy_type
R 2525 5 668 mlcanopyfluxestype beta_canopy mlcanopy_type
R 2527 5 670 mlcanopyfluxestype beta_canopy$sd mlcanopy_type
R 2528 5 671 mlcanopyfluxestype beta_canopy$p mlcanopy_type
R 2529 5 672 mlcanopyfluxestype beta_canopy$o mlcanopy_type
R 2531 5 674 mlcanopyfluxestype prsc_canopy mlcanopy_type
R 2533 5 676 mlcanopyfluxestype prsc_canopy$sd mlcanopy_type
R 2534 5 677 mlcanopyfluxestype prsc_canopy$p mlcanopy_type
R 2535 5 678 mlcanopyfluxestype prsc_canopy$o mlcanopy_type
R 2537 5 680 mlcanopyfluxestype lc_canopy mlcanopy_type
R 2539 5 682 mlcanopyfluxestype lc_canopy$sd mlcanopy_type
R 2540 5 683 mlcanopyfluxestype lc_canopy$p mlcanopy_type
R 2541 5 684 mlcanopyfluxestype lc_canopy$o mlcanopy_type
R 2543 5 686 mlcanopyfluxestype zdisp_canopy mlcanopy_type
R 2545 5 688 mlcanopyfluxestype zdisp_canopy$sd mlcanopy_type
R 2546 5 689 mlcanopyfluxestype zdisp_canopy$p mlcanopy_type
R 2547 5 690 mlcanopyfluxestype zdisp_canopy$o mlcanopy_type
R 2549 5 692 mlcanopyfluxestype z0m_canopy mlcanopy_type
R 2551 5 694 mlcanopyfluxestype z0m_canopy$sd mlcanopy_type
R 2552 5 695 mlcanopyfluxestype z0m_canopy$p mlcanopy_type
R 2553 5 696 mlcanopyfluxestype z0m_canopy$o mlcanopy_type
R 2555 5 698 mlcanopyfluxestype g0_canopy mlcanopy_type
R 2557 5 700 mlcanopyfluxestype g0_canopy$sd mlcanopy_type
R 2558 5 701 mlcanopyfluxestype g0_canopy$p mlcanopy_type
R 2559 5 702 mlcanopyfluxestype g0_canopy$o mlcanopy_type
R 2561 5 704 mlcanopyfluxestype g1_canopy mlcanopy_type
R 2563 5 706 mlcanopyfluxestype g1_canopy$sd mlcanopy_type
R 2564 5 707 mlcanopyfluxestype g1_canopy$p mlcanopy_type
R 2565 5 708 mlcanopyfluxestype g1_canopy$o mlcanopy_type
R 2567 5 710 mlcanopyfluxestype albsoib_soil mlcanopy_type
R 2570 5 713 mlcanopyfluxestype albsoib_soil$sd mlcanopy_type
R 2571 5 714 mlcanopyfluxestype albsoib_soil$p mlcanopy_type
R 2572 5 715 mlcanopyfluxestype albsoib_soil$o mlcanopy_type
R 2574 5 717 mlcanopyfluxestype albsoid_soil mlcanopy_type
R 2577 5 720 mlcanopyfluxestype albsoid_soil$sd mlcanopy_type
R 2578 5 721 mlcanopyfluxestype albsoid_soil$p mlcanopy_type
R 2579 5 722 mlcanopyfluxestype albsoid_soil$o mlcanopy_type
R 2581 5 724 mlcanopyfluxestype swsoi_soil mlcanopy_type
R 2584 5 727 mlcanopyfluxestype swsoi_soil$sd mlcanopy_type
R 2585 5 728 mlcanopyfluxestype swsoi_soil$p mlcanopy_type
R 2586 5 729 mlcanopyfluxestype swsoi_soil$o mlcanopy_type
R 2588 5 731 mlcanopyfluxestype lwsoi_soil mlcanopy_type
R 2590 5 733 mlcanopyfluxestype lwsoi_soil$sd mlcanopy_type
R 2591 5 734 mlcanopyfluxestype lwsoi_soil$p mlcanopy_type
R 2592 5 735 mlcanopyfluxestype lwsoi_soil$o mlcanopy_type
R 2594 5 737 mlcanopyfluxestype rnsoi_soil mlcanopy_type
R 2596 5 739 mlcanopyfluxestype rnsoi_soil$sd mlcanopy_type
R 2597 5 740 mlcanopyfluxestype rnsoi_soil$p mlcanopy_type
R 2598 5 741 mlcanopyfluxestype rnsoi_soil$o mlcanopy_type
R 2600 5 743 mlcanopyfluxestype shsoi_soil mlcanopy_type
R 2602 5 745 mlcanopyfluxestype shsoi_soil$sd mlcanopy_type
R 2603 5 746 mlcanopyfluxestype shsoi_soil$p mlcanopy_type
R 2604 5 747 mlcanopyfluxestype shsoi_soil$o mlcanopy_type
R 2606 5 749 mlcanopyfluxestype lhsoi_soil mlcanopy_type
R 2608 5 751 mlcanopyfluxestype lhsoi_soil$sd mlcanopy_type
R 2609 5 752 mlcanopyfluxestype lhsoi_soil$p mlcanopy_type
R 2610 5 753 mlcanopyfluxestype lhsoi_soil$o mlcanopy_type
R 2612 5 755 mlcanopyfluxestype etsoi_soil mlcanopy_type
R 2614 5 757 mlcanopyfluxestype etsoi_soil$sd mlcanopy_type
R 2615 5 758 mlcanopyfluxestype etsoi_soil$p mlcanopy_type
R 2616 5 759 mlcanopyfluxestype etsoi_soil$o mlcanopy_type
R 2618 5 761 mlcanopyfluxestype gsoi_soil mlcanopy_type
R 2620 5 763 mlcanopyfluxestype gsoi_soil$sd mlcanopy_type
R 2621 5 764 mlcanopyfluxestype gsoi_soil$p mlcanopy_type
R 2622 5 765 mlcanopyfluxestype gsoi_soil$o mlcanopy_type
R 2624 5 767 mlcanopyfluxestype tg_soil mlcanopy_type
R 2626 5 769 mlcanopyfluxestype tg_soil$sd mlcanopy_type
R 2627 5 770 mlcanopyfluxestype tg_soil$p mlcanopy_type
R 2628 5 771 mlcanopyfluxestype tg_soil$o mlcanopy_type
R 2630 5 773 mlcanopyfluxestype tg_bef_soil mlcanopy_type
R 2632 5 775 mlcanopyfluxestype tg_bef_soil$sd mlcanopy_type
R 2633 5 776 mlcanopyfluxestype tg_bef_soil$p mlcanopy_type
R 2634 5 777 mlcanopyfluxestype tg_bef_soil$o mlcanopy_type
R 2636 5 779 mlcanopyfluxestype dtg_soil mlcanopy_type
R 2639 5 782 mlcanopyfluxestype dtg_soil$sd mlcanopy_type
R 2640 5 783 mlcanopyfluxestype dtg_soil$p mlcanopy_type
R 2641 5 784 mlcanopyfluxestype dtg_soil$o mlcanopy_type
R 2643 5 786 mlcanopyfluxestype eg_soil mlcanopy_type
R 2645 5 788 mlcanopyfluxestype eg_soil$sd mlcanopy_type
R 2646 5 789 mlcanopyfluxestype eg_soil$p mlcanopy_type
R 2647 5 790 mlcanopyfluxestype eg_soil$o mlcanopy_type
R 2649 5 792 mlcanopyfluxestype rhg_soil mlcanopy_type
R 2651 5 794 mlcanopyfluxestype rhg_soil$sd mlcanopy_type
R 2652 5 795 mlcanopyfluxestype rhg_soil$p mlcanopy_type
R 2653 5 796 mlcanopyfluxestype rhg_soil$o mlcanopy_type
R 2655 5 798 mlcanopyfluxestype gac0_soil mlcanopy_type
R 2657 5 800 mlcanopyfluxestype gac0_soil$sd mlcanopy_type
R 2658 5 801 mlcanopyfluxestype gac0_soil$p mlcanopy_type
R 2659 5 802 mlcanopyfluxestype gac0_soil$o mlcanopy_type
R 2661 5 804 mlcanopyfluxestype soil_t_soil mlcanopy_type
R 2663 5 806 mlcanopyfluxestype soil_t_soil$sd mlcanopy_type
R 2664 5 807 mlcanopyfluxestype soil_t_soil$p mlcanopy_type
R 2665 5 808 mlcanopyfluxestype soil_t_soil$o mlcanopy_type
R 2667 5 810 mlcanopyfluxestype soil_dz_soil mlcanopy_type
R 2669 5 812 mlcanopyfluxestype soil_dz_soil$sd mlcanopy_type
R 2670 5 813 mlcanopyfluxestype soil_dz_soil$p mlcanopy_type
R 2671 5 814 mlcanopyfluxestype soil_dz_soil$o mlcanopy_type
R 2673 5 816 mlcanopyfluxestype soil_tk_soil mlcanopy_type
R 2675 5 818 mlcanopyfluxestype soil_tk_soil$sd mlcanopy_type
R 2676 5 819 mlcanopyfluxestype soil_tk_soil$p mlcanopy_type
R 2677 5 820 mlcanopyfluxestype soil_tk_soil$o mlcanopy_type
R 2679 5 822 mlcanopyfluxestype soilres_soil mlcanopy_type
R 2681 5 824 mlcanopyfluxestype soilres_soil$sd mlcanopy_type
R 2682 5 825 mlcanopyfluxestype soilres_soil$p mlcanopy_type
R 2683 5 826 mlcanopyfluxestype soilres_soil$o mlcanopy_type
R 2685 5 828 mlcanopyfluxestype btran_soil mlcanopy_type
R 2687 5 830 mlcanopyfluxestype btran_soil$sd mlcanopy_type
R 2688 5 831 mlcanopyfluxestype btran_soil$p mlcanopy_type
R 2689 5 832 mlcanopyfluxestype btran_soil$o mlcanopy_type
R 2691 5 834 mlcanopyfluxestype psis_soil mlcanopy_type
R 2693 5 836 mlcanopyfluxestype psis_soil$sd mlcanopy_type
R 2694 5 837 mlcanopyfluxestype psis_soil$p mlcanopy_type
R 2695 5 838 mlcanopyfluxestype psis_soil$o mlcanopy_type
R 2697 5 840 mlcanopyfluxestype rsoil_soil mlcanopy_type
R 2699 5 842 mlcanopyfluxestype rsoil_soil$sd mlcanopy_type
R 2700 5 843 mlcanopyfluxestype rsoil_soil$p mlcanopy_type
R 2701 5 844 mlcanopyfluxestype rsoil_soil$o mlcanopy_type
R 2703 5 846 mlcanopyfluxestype soil_et_loss_soil mlcanopy_type
R 2706 5 849 mlcanopyfluxestype soil_et_loss_soil$sd mlcanopy_type
R 2707 5 850 mlcanopyfluxestype soil_et_loss_soil$p mlcanopy_type
R 2708 5 851 mlcanopyfluxestype soil_et_loss_soil$o mlcanopy_type
R 2710 5 853 mlcanopyfluxestype ncan_canopy mlcanopy_type
R 2712 5 855 mlcanopyfluxestype ncan_canopy$sd mlcanopy_type
R 2713 5 856 mlcanopyfluxestype ncan_canopy$p mlcanopy_type
R 2714 5 857 mlcanopyfluxestype ncan_canopy$o mlcanopy_type
R 2716 5 859 mlcanopyfluxestype ntop_canopy mlcanopy_type
R 2718 5 861 mlcanopyfluxestype ntop_canopy$sd mlcanopy_type
R 2719 5 862 mlcanopyfluxestype ntop_canopy$p mlcanopy_type
R 2720 5 863 mlcanopyfluxestype ntop_canopy$o mlcanopy_type
R 2722 5 865 mlcanopyfluxestype nbot_canopy mlcanopy_type
R 2724 5 867 mlcanopyfluxestype nbot_canopy$sd mlcanopy_type
R 2725 5 868 mlcanopyfluxestype nbot_canopy$p mlcanopy_type
R 2726 5 869 mlcanopyfluxestype nbot_canopy$o mlcanopy_type
R 2728 5 871 mlcanopyfluxestype dlai_frac_profile mlcanopy_type
R 2731 5 874 mlcanopyfluxestype dlai_frac_profile$sd mlcanopy_type
R 2732 5 875 mlcanopyfluxestype dlai_frac_profile$p mlcanopy_type
R 2733 5 876 mlcanopyfluxestype dlai_frac_profile$o mlcanopy_type
R 2735 5 878 mlcanopyfluxestype dsai_frac_profile mlcanopy_type
R 2738 5 881 mlcanopyfluxestype dsai_frac_profile$sd mlcanopy_type
R 2739 5 882 mlcanopyfluxestype dsai_frac_profile$p mlcanopy_type
R 2740 5 883 mlcanopyfluxestype dsai_frac_profile$o mlcanopy_type
R 2742 5 885 mlcanopyfluxestype dlai_profile mlcanopy_type
R 2745 5 888 mlcanopyfluxestype dlai_profile$sd mlcanopy_type
R 2746 5 889 mlcanopyfluxestype dlai_profile$p mlcanopy_type
R 2747 5 890 mlcanopyfluxestype dlai_profile$o mlcanopy_type
R 2749 5 892 mlcanopyfluxestype dsai_profile mlcanopy_type
R 2752 5 895 mlcanopyfluxestype dsai_profile$sd mlcanopy_type
R 2753 5 896 mlcanopyfluxestype dsai_profile$p mlcanopy_type
R 2754 5 897 mlcanopyfluxestype dsai_profile$o mlcanopy_type
R 2756 5 899 mlcanopyfluxestype dpai_profile mlcanopy_type
R 2759 5 902 mlcanopyfluxestype dpai_profile$sd mlcanopy_type
R 2760 5 903 mlcanopyfluxestype dpai_profile$p mlcanopy_type
R 2761 5 904 mlcanopyfluxestype dpai_profile$o mlcanopy_type
R 2763 5 906 mlcanopyfluxestype zs_profile mlcanopy_type
R 2766 5 909 mlcanopyfluxestype zs_profile$sd mlcanopy_type
R 2767 5 910 mlcanopyfluxestype zs_profile$p mlcanopy_type
R 2768 5 911 mlcanopyfluxestype zs_profile$o mlcanopy_type
R 2770 5 913 mlcanopyfluxestype zw_profile mlcanopy_type
R 2773 5 916 mlcanopyfluxestype zw_profile$sd mlcanopy_type
R 2774 5 917 mlcanopyfluxestype zw_profile$p mlcanopy_type
R 2775 5 918 mlcanopyfluxestype zw_profile$o mlcanopy_type
R 2777 5 920 mlcanopyfluxestype dz_profile mlcanopy_type
R 2780 5 923 mlcanopyfluxestype dz_profile$sd mlcanopy_type
R 2781 5 924 mlcanopyfluxestype dz_profile$p mlcanopy_type
R 2782 5 925 mlcanopyfluxestype dz_profile$o mlcanopy_type
R 2784 5 927 mlcanopyfluxestype vcmax25_profile mlcanopy_type
R 2787 5 930 mlcanopyfluxestype vcmax25_profile$sd mlcanopy_type
R 2788 5 931 mlcanopyfluxestype vcmax25_profile$p mlcanopy_type
R 2789 5 932 mlcanopyfluxestype vcmax25_profile$o mlcanopy_type
R 2791 5 934 mlcanopyfluxestype jmax25_profile mlcanopy_type
R 2794 5 937 mlcanopyfluxestype jmax25_profile$sd mlcanopy_type
R 2795 5 938 mlcanopyfluxestype jmax25_profile$p mlcanopy_type
R 2796 5 939 mlcanopyfluxestype jmax25_profile$o mlcanopy_type
R 2798 5 941 mlcanopyfluxestype kp25_profile mlcanopy_type
R 2801 5 944 mlcanopyfluxestype kp25_profile$sd mlcanopy_type
R 2802 5 945 mlcanopyfluxestype kp25_profile$p mlcanopy_type
R 2803 5 946 mlcanopyfluxestype kp25_profile$o mlcanopy_type
R 2805 5 948 mlcanopyfluxestype rd25_profile mlcanopy_type
R 2808 5 951 mlcanopyfluxestype rd25_profile$sd mlcanopy_type
R 2809 5 952 mlcanopyfluxestype rd25_profile$p mlcanopy_type
R 2810 5 953 mlcanopyfluxestype rd25_profile$o mlcanopy_type
R 2812 5 955 mlcanopyfluxestype cpleaf_profile mlcanopy_type
R 2815 5 958 mlcanopyfluxestype cpleaf_profile$sd mlcanopy_type
R 2816 5 959 mlcanopyfluxestype cpleaf_profile$p mlcanopy_type
R 2817 5 960 mlcanopyfluxestype cpleaf_profile$o mlcanopy_type
R 2819 5 962 mlcanopyfluxestype fracsun_profile mlcanopy_type
R 2822 5 965 mlcanopyfluxestype fracsun_profile$sd mlcanopy_type
R 2823 5 966 mlcanopyfluxestype fracsun_profile$p mlcanopy_type
R 2824 5 967 mlcanopyfluxestype fracsun_profile$o mlcanopy_type
R 2826 5 969 mlcanopyfluxestype kb_profile mlcanopy_type
R 2829 5 972 mlcanopyfluxestype kb_profile$sd mlcanopy_type
R 2830 5 973 mlcanopyfluxestype kb_profile$p mlcanopy_type
R 2831 5 974 mlcanopyfluxestype kb_profile$o mlcanopy_type
R 2833 5 976 mlcanopyfluxestype tb_profile mlcanopy_type
R 2836 5 979 mlcanopyfluxestype tb_profile$sd mlcanopy_type
R 2837 5 980 mlcanopyfluxestype tb_profile$p mlcanopy_type
R 2838 5 981 mlcanopyfluxestype tb_profile$o mlcanopy_type
R 2840 5 983 mlcanopyfluxestype td_profile mlcanopy_type
R 2843 5 986 mlcanopyfluxestype td_profile$sd mlcanopy_type
R 2844 5 987 mlcanopyfluxestype td_profile$p mlcanopy_type
R 2845 5 988 mlcanopyfluxestype td_profile$o mlcanopy_type
R 2847 5 990 mlcanopyfluxestype tbi_profile mlcanopy_type
R 2850 5 993 mlcanopyfluxestype tbi_profile$sd mlcanopy_type
R 2851 5 994 mlcanopyfluxestype tbi_profile$p mlcanopy_type
R 2852 5 995 mlcanopyfluxestype tbi_profile$o mlcanopy_type
R 2854 5 997 mlcanopyfluxestype swbeam_profile mlcanopy_type
R 2858 5 1001 mlcanopyfluxestype swbeam_profile$sd mlcanopy_type
R 2859 5 1002 mlcanopyfluxestype swbeam_profile$p mlcanopy_type
R 2860 5 1003 mlcanopyfluxestype swbeam_profile$o mlcanopy_type
R 2862 5 1005 mlcanopyfluxestype swupw_profile mlcanopy_type
R 2866 5 1009 mlcanopyfluxestype swupw_profile$sd mlcanopy_type
R 2867 5 1010 mlcanopyfluxestype swupw_profile$p mlcanopy_type
R 2868 5 1011 mlcanopyfluxestype swupw_profile$o mlcanopy_type
R 2870 5 1013 mlcanopyfluxestype swdwn_profile mlcanopy_type
R 2874 5 1017 mlcanopyfluxestype swdwn_profile$sd mlcanopy_type
R 2875 5 1018 mlcanopyfluxestype swdwn_profile$p mlcanopy_type
R 2876 5 1019 mlcanopyfluxestype swdwn_profile$o mlcanopy_type
R 2878 5 1021 mlcanopyfluxestype lwupw_profile mlcanopy_type
R 2881 5 1024 mlcanopyfluxestype lwupw_profile$sd mlcanopy_type
R 2882 5 1025 mlcanopyfluxestype lwupw_profile$p mlcanopy_type
R 2883 5 1026 mlcanopyfluxestype lwupw_profile$o mlcanopy_type
R 2885 5 1028 mlcanopyfluxestype lwdwn_profile mlcanopy_type
R 2888 5 1031 mlcanopyfluxestype lwdwn_profile$sd mlcanopy_type
R 2889 5 1032 mlcanopyfluxestype lwdwn_profile$p mlcanopy_type
R 2890 5 1033 mlcanopyfluxestype lwdwn_profile$o mlcanopy_type
R 2892 5 1035 mlcanopyfluxestype swsrc_profile mlcanopy_type
R 2896 5 1039 mlcanopyfluxestype swsrc_profile$sd mlcanopy_type
R 2897 5 1040 mlcanopyfluxestype swsrc_profile$p mlcanopy_type
R 2898 5 1041 mlcanopyfluxestype swsrc_profile$o mlcanopy_type
R 2900 5 1043 mlcanopyfluxestype lwsrc_profile mlcanopy_type
R 2903 5 1046 mlcanopyfluxestype lwsrc_profile$sd mlcanopy_type
R 2904 5 1047 mlcanopyfluxestype lwsrc_profile$p mlcanopy_type
R 2905 5 1048 mlcanopyfluxestype lwsrc_profile$o mlcanopy_type
R 2907 5 1050 mlcanopyfluxestype rnsrc_profile mlcanopy_type
R 2910 5 1053 mlcanopyfluxestype rnsrc_profile$sd mlcanopy_type
R 2911 5 1054 mlcanopyfluxestype rnsrc_profile$p mlcanopy_type
R 2912 5 1055 mlcanopyfluxestype rnsrc_profile$o mlcanopy_type
R 2914 5 1057 mlcanopyfluxestype stsrc_profile mlcanopy_type
R 2917 5 1060 mlcanopyfluxestype stsrc_profile$sd mlcanopy_type
R 2918 5 1061 mlcanopyfluxestype stsrc_profile$p mlcanopy_type
R 2919 5 1062 mlcanopyfluxestype stsrc_profile$o mlcanopy_type
R 2921 5 1064 mlcanopyfluxestype shsrc_profile mlcanopy_type
R 2924 5 1067 mlcanopyfluxestype shsrc_profile$sd mlcanopy_type
R 2925 5 1068 mlcanopyfluxestype shsrc_profile$p mlcanopy_type
R 2926 5 1069 mlcanopyfluxestype shsrc_profile$o mlcanopy_type
R 2928 5 1071 mlcanopyfluxestype lhsrc_profile mlcanopy_type
R 2931 5 1074 mlcanopyfluxestype lhsrc_profile$sd mlcanopy_type
R 2932 5 1075 mlcanopyfluxestype lhsrc_profile$p mlcanopy_type
R 2933 5 1076 mlcanopyfluxestype lhsrc_profile$o mlcanopy_type
R 2935 5 1078 mlcanopyfluxestype etsrc_profile mlcanopy_type
R 2938 5 1081 mlcanopyfluxestype etsrc_profile$sd mlcanopy_type
R 2939 5 1082 mlcanopyfluxestype etsrc_profile$p mlcanopy_type
R 2940 5 1083 mlcanopyfluxestype etsrc_profile$o mlcanopy_type
R 2942 5 1085 mlcanopyfluxestype trsrc_profile mlcanopy_type
R 2945 5 1088 mlcanopyfluxestype trsrc_profile$sd mlcanopy_type
R 2946 5 1089 mlcanopyfluxestype trsrc_profile$p mlcanopy_type
R 2947 5 1090 mlcanopyfluxestype trsrc_profile$o mlcanopy_type
R 2949 5 1092 mlcanopyfluxestype evsrc_profile mlcanopy_type
R 2952 5 1095 mlcanopyfluxestype evsrc_profile$sd mlcanopy_type
R 2953 5 1096 mlcanopyfluxestype evsrc_profile$p mlcanopy_type
R 2954 5 1097 mlcanopyfluxestype evsrc_profile$o mlcanopy_type
R 2956 5 1099 mlcanopyfluxestype fco2src_profile mlcanopy_type
R 2959 5 1102 mlcanopyfluxestype fco2src_profile$sd mlcanopy_type
R 2960 5 1103 mlcanopyfluxestype fco2src_profile$p mlcanopy_type
R 2961 5 1104 mlcanopyfluxestype fco2src_profile$o mlcanopy_type
R 2963 5 1106 mlcanopyfluxestype wind_profile mlcanopy_type
R 2966 5 1109 mlcanopyfluxestype wind_profile$sd mlcanopy_type
R 2967 5 1110 mlcanopyfluxestype wind_profile$p mlcanopy_type
R 2968 5 1111 mlcanopyfluxestype wind_profile$o mlcanopy_type
R 2970 5 1113 mlcanopyfluxestype tair_profile mlcanopy_type
R 2973 5 1116 mlcanopyfluxestype tair_profile$sd mlcanopy_type
R 2974 5 1117 mlcanopyfluxestype tair_profile$p mlcanopy_type
R 2975 5 1118 mlcanopyfluxestype tair_profile$o mlcanopy_type
R 2977 5 1120 mlcanopyfluxestype eair_profile mlcanopy_type
R 2980 5 1123 mlcanopyfluxestype eair_profile$sd mlcanopy_type
R 2981 5 1124 mlcanopyfluxestype eair_profile$p mlcanopy_type
R 2982 5 1125 mlcanopyfluxestype eair_profile$o mlcanopy_type
R 2984 5 1127 mlcanopyfluxestype cair_profile mlcanopy_type
R 2987 5 1130 mlcanopyfluxestype cair_profile$sd mlcanopy_type
R 2988 5 1131 mlcanopyfluxestype cair_profile$p mlcanopy_type
R 2989 5 1132 mlcanopyfluxestype cair_profile$o mlcanopy_type
R 2991 5 1134 mlcanopyfluxestype tair_bef_profile mlcanopy_type
R 2994 5 1137 mlcanopyfluxestype tair_bef_profile$sd mlcanopy_type
R 2995 5 1138 mlcanopyfluxestype tair_bef_profile$p mlcanopy_type
R 2996 5 1139 mlcanopyfluxestype tair_bef_profile$o mlcanopy_type
R 2998 5 1141 mlcanopyfluxestype eair_bef_profile mlcanopy_type
R 3001 5 1144 mlcanopyfluxestype eair_bef_profile$sd mlcanopy_type
R 3002 5 1145 mlcanopyfluxestype eair_bef_profile$p mlcanopy_type
R 3003 5 1146 mlcanopyfluxestype eair_bef_profile$o mlcanopy_type
R 3005 5 1148 mlcanopyfluxestype cair_bef_profile mlcanopy_type
R 3008 5 1151 mlcanopyfluxestype cair_bef_profile$sd mlcanopy_type
R 3009 5 1152 mlcanopyfluxestype cair_bef_profile$p mlcanopy_type
R 3010 5 1153 mlcanopyfluxestype cair_bef_profile$o mlcanopy_type
R 3012 5 1155 mlcanopyfluxestype dtair_profile mlcanopy_type
R 3016 5 1159 mlcanopyfluxestype dtair_profile$sd mlcanopy_type
R 3017 5 1160 mlcanopyfluxestype dtair_profile$p mlcanopy_type
R 3018 5 1161 mlcanopyfluxestype dtair_profile$o mlcanopy_type
R 3020 5 1163 mlcanopyfluxestype deair_profile mlcanopy_type
R 3024 5 1167 mlcanopyfluxestype deair_profile$sd mlcanopy_type
R 3025 5 1168 mlcanopyfluxestype deair_profile$p mlcanopy_type
R 3026 5 1169 mlcanopyfluxestype deair_profile$o mlcanopy_type
R 3028 5 1171 mlcanopyfluxestype wind_data_profile mlcanopy_type
R 3031 5 1174 mlcanopyfluxestype wind_data_profile$sd mlcanopy_type
R 3032 5 1175 mlcanopyfluxestype wind_data_profile$p mlcanopy_type
R 3033 5 1176 mlcanopyfluxestype wind_data_profile$o mlcanopy_type
R 3035 5 1178 mlcanopyfluxestype tair_data_profile mlcanopy_type
R 3038 5 1181 mlcanopyfluxestype tair_data_profile$sd mlcanopy_type
R 3039 5 1182 mlcanopyfluxestype tair_data_profile$p mlcanopy_type
R 3040 5 1183 mlcanopyfluxestype tair_data_profile$o mlcanopy_type
R 3042 5 1185 mlcanopyfluxestype eair_data_profile mlcanopy_type
R 3045 5 1188 mlcanopyfluxestype eair_data_profile$sd mlcanopy_type
R 3046 5 1189 mlcanopyfluxestype eair_data_profile$p mlcanopy_type
R 3047 5 1190 mlcanopyfluxestype eair_data_profile$o mlcanopy_type
R 3049 5 1192 mlcanopyfluxestype shair_profile mlcanopy_type
R 3052 5 1195 mlcanopyfluxestype shair_profile$sd mlcanopy_type
R 3053 5 1196 mlcanopyfluxestype shair_profile$p mlcanopy_type
R 3054 5 1197 mlcanopyfluxestype shair_profile$o mlcanopy_type
R 3056 5 1199 mlcanopyfluxestype etair_profile mlcanopy_type
R 3059 5 1202 mlcanopyfluxestype etair_profile$sd mlcanopy_type
R 3060 5 1203 mlcanopyfluxestype etair_profile$p mlcanopy_type
R 3061 5 1204 mlcanopyfluxestype etair_profile$o mlcanopy_type
R 3063 5 1206 mlcanopyfluxestype stair_profile mlcanopy_type
R 3066 5 1209 mlcanopyfluxestype stair_profile$sd mlcanopy_type
R 3067 5 1210 mlcanopyfluxestype stair_profile$p mlcanopy_type
R 3068 5 1211 mlcanopyfluxestype stair_profile$o mlcanopy_type
R 3070 5 1213 mlcanopyfluxestype mflx_profile mlcanopy_type
R 3073 5 1216 mlcanopyfluxestype mflx_profile$sd mlcanopy_type
R 3074 5 1217 mlcanopyfluxestype mflx_profile$p mlcanopy_type
R 3075 5 1218 mlcanopyfluxestype mflx_profile$o mlcanopy_type
R 3077 5 1220 mlcanopyfluxestype gac_profile mlcanopy_type
R 3080 5 1223 mlcanopyfluxestype gac_profile$sd mlcanopy_type
R 3081 5 1224 mlcanopyfluxestype gac_profile$p mlcanopy_type
R 3082 5 1225 mlcanopyfluxestype gac_profile$o mlcanopy_type
R 3084 5 1227 mlcanopyfluxestype kc_eddy_profile mlcanopy_type
R 3087 5 1230 mlcanopyfluxestype kc_eddy_profile$sd mlcanopy_type
R 3088 5 1231 mlcanopyfluxestype kc_eddy_profile$p mlcanopy_type
R 3089 5 1232 mlcanopyfluxestype kc_eddy_profile$o mlcanopy_type
R 3091 5 1234 mlcanopyfluxestype swleaf_mean_profile mlcanopy_type
R 3095 5 1238 mlcanopyfluxestype swleaf_mean_profile$sd mlcanopy_type
R 3096 5 1239 mlcanopyfluxestype swleaf_mean_profile$p mlcanopy_type
R 3097 5 1240 mlcanopyfluxestype swleaf_mean_profile$o mlcanopy_type
R 3099 5 1242 mlcanopyfluxestype lwleaf_mean_profile mlcanopy_type
R 3102 5 1245 mlcanopyfluxestype lwleaf_mean_profile$sd mlcanopy_type
R 3103 5 1246 mlcanopyfluxestype lwleaf_mean_profile$p mlcanopy_type
R 3104 5 1247 mlcanopyfluxestype lwleaf_mean_profile$o mlcanopy_type
R 3106 5 1249 mlcanopyfluxestype rnleaf_mean_profile mlcanopy_type
R 3109 5 1252 mlcanopyfluxestype rnleaf_mean_profile$sd mlcanopy_type
R 3110 5 1253 mlcanopyfluxestype rnleaf_mean_profile$p mlcanopy_type
R 3111 5 1254 mlcanopyfluxestype rnleaf_mean_profile$o mlcanopy_type
R 3113 5 1256 mlcanopyfluxestype stleaf_mean_profile mlcanopy_type
R 3116 5 1259 mlcanopyfluxestype stleaf_mean_profile$sd mlcanopy_type
R 3117 5 1260 mlcanopyfluxestype stleaf_mean_profile$p mlcanopy_type
R 3118 5 1261 mlcanopyfluxestype stleaf_mean_profile$o mlcanopy_type
R 3120 5 1263 mlcanopyfluxestype shleaf_mean_profile mlcanopy_type
R 3123 5 1266 mlcanopyfluxestype shleaf_mean_profile$sd mlcanopy_type
R 3124 5 1267 mlcanopyfluxestype shleaf_mean_profile$p mlcanopy_type
R 3125 5 1268 mlcanopyfluxestype shleaf_mean_profile$o mlcanopy_type
R 3127 5 1270 mlcanopyfluxestype lhleaf_mean_profile mlcanopy_type
R 3130 5 1273 mlcanopyfluxestype lhleaf_mean_profile$sd mlcanopy_type
R 3131 5 1274 mlcanopyfluxestype lhleaf_mean_profile$p mlcanopy_type
R 3132 5 1275 mlcanopyfluxestype lhleaf_mean_profile$o mlcanopy_type
R 3134 5 1277 mlcanopyfluxestype etleaf_mean_profile mlcanopy_type
R 3137 5 1280 mlcanopyfluxestype etleaf_mean_profile$sd mlcanopy_type
R 3138 5 1281 mlcanopyfluxestype etleaf_mean_profile$p mlcanopy_type
R 3139 5 1282 mlcanopyfluxestype etleaf_mean_profile$o mlcanopy_type
R 3141 5 1284 mlcanopyfluxestype trleaf_mean_profile mlcanopy_type
R 3144 5 1287 mlcanopyfluxestype trleaf_mean_profile$sd mlcanopy_type
R 3145 5 1288 mlcanopyfluxestype trleaf_mean_profile$p mlcanopy_type
R 3146 5 1289 mlcanopyfluxestype trleaf_mean_profile$o mlcanopy_type
R 3148 5 1291 mlcanopyfluxestype evleaf_mean_profile mlcanopy_type
R 3151 5 1294 mlcanopyfluxestype evleaf_mean_profile$sd mlcanopy_type
R 3152 5 1295 mlcanopyfluxestype evleaf_mean_profile$p mlcanopy_type
R 3153 5 1296 mlcanopyfluxestype evleaf_mean_profile$o mlcanopy_type
R 3155 5 1298 mlcanopyfluxestype fco2_mean_profile mlcanopy_type
R 3158 5 1301 mlcanopyfluxestype fco2_mean_profile$sd mlcanopy_type
R 3159 5 1302 mlcanopyfluxestype fco2_mean_profile$p mlcanopy_type
R 3160 5 1303 mlcanopyfluxestype fco2_mean_profile$o mlcanopy_type
R 3162 5 1305 mlcanopyfluxestype apar_mean_profile mlcanopy_type
R 3165 5 1308 mlcanopyfluxestype apar_mean_profile$sd mlcanopy_type
R 3166 5 1309 mlcanopyfluxestype apar_mean_profile$p mlcanopy_type
R 3167 5 1310 mlcanopyfluxestype apar_mean_profile$o mlcanopy_type
R 3169 5 1312 mlcanopyfluxestype gs_mean_profile mlcanopy_type
R 3172 5 1315 mlcanopyfluxestype gs_mean_profile$sd mlcanopy_type
R 3173 5 1316 mlcanopyfluxestype gs_mean_profile$p mlcanopy_type
R 3174 5 1317 mlcanopyfluxestype gs_mean_profile$o mlcanopy_type
R 3176 5 1319 mlcanopyfluxestype tleaf_mean_profile mlcanopy_type
R 3179 5 1322 mlcanopyfluxestype tleaf_mean_profile$sd mlcanopy_type
R 3180 5 1323 mlcanopyfluxestype tleaf_mean_profile$p mlcanopy_type
R 3181 5 1324 mlcanopyfluxestype tleaf_mean_profile$o mlcanopy_type
R 3183 5 1326 mlcanopyfluxestype lwp_mean_profile mlcanopy_type
R 3186 5 1329 mlcanopyfluxestype lwp_mean_profile$sd mlcanopy_type
R 3187 5 1330 mlcanopyfluxestype lwp_mean_profile$p mlcanopy_type
R 3188 5 1331 mlcanopyfluxestype lwp_mean_profile$o mlcanopy_type
R 3190 5 1333 mlcanopyfluxestype lsc_profile mlcanopy_type
R 3193 5 1336 mlcanopyfluxestype lsc_profile$sd mlcanopy_type
R 3194 5 1337 mlcanopyfluxestype lsc_profile$p mlcanopy_type
R 3195 5 1338 mlcanopyfluxestype lsc_profile$o mlcanopy_type
R 3197 5 1340 mlcanopyfluxestype h2ocan_profile mlcanopy_type
R 3200 5 1343 mlcanopyfluxestype h2ocan_profile$sd mlcanopy_type
R 3201 5 1344 mlcanopyfluxestype h2ocan_profile$p mlcanopy_type
R 3202 5 1345 mlcanopyfluxestype h2ocan_profile$o mlcanopy_type
R 3204 5 1347 mlcanopyfluxestype h2ocan_bef_profile mlcanopy_type
R 3207 5 1350 mlcanopyfluxestype h2ocan_bef_profile$sd mlcanopy_type
R 3208 5 1351 mlcanopyfluxestype h2ocan_bef_profile$p mlcanopy_type
R 3209 5 1352 mlcanopyfluxestype h2ocan_bef_profile$o mlcanopy_type
R 3211 5 1354 mlcanopyfluxestype dh2ocan_profile mlcanopy_type
R 3215 5 1358 mlcanopyfluxestype dh2ocan_profile$sd mlcanopy_type
R 3216 5 1359 mlcanopyfluxestype dh2ocan_profile$p mlcanopy_type
R 3217 5 1360 mlcanopyfluxestype dh2ocan_profile$o mlcanopy_type
R 3219 5 1362 mlcanopyfluxestype fwet_profile mlcanopy_type
R 3222 5 1365 mlcanopyfluxestype fwet_profile$sd mlcanopy_type
R 3223 5 1366 mlcanopyfluxestype fwet_profile$p mlcanopy_type
R 3224 5 1367 mlcanopyfluxestype fwet_profile$o mlcanopy_type
R 3226 5 1369 mlcanopyfluxestype fdry_profile mlcanopy_type
R 3229 5 1372 mlcanopyfluxestype fdry_profile$sd mlcanopy_type
R 3230 5 1373 mlcanopyfluxestype fdry_profile$p mlcanopy_type
R 3231 5 1374 mlcanopyfluxestype fdry_profile$o mlcanopy_type
R 3233 5 1376 mlcanopyfluxestype tleaf_leaf mlcanopy_type
R 3237 5 1380 mlcanopyfluxestype tleaf_leaf$sd mlcanopy_type
R 3238 5 1381 mlcanopyfluxestype tleaf_leaf$p mlcanopy_type
R 3239 5 1382 mlcanopyfluxestype tleaf_leaf$o mlcanopy_type
R 3241 5 1384 mlcanopyfluxestype tleaf_bef_leaf mlcanopy_type
R 3245 5 1388 mlcanopyfluxestype tleaf_bef_leaf$sd mlcanopy_type
R 3246 5 1389 mlcanopyfluxestype tleaf_bef_leaf$p mlcanopy_type
R 3247 5 1390 mlcanopyfluxestype tleaf_bef_leaf$o mlcanopy_type
R 3249 5 1392 mlcanopyfluxestype dtleaf_leaf mlcanopy_type
R 3254 5 1397 mlcanopyfluxestype dtleaf_leaf$sd mlcanopy_type
R 3255 5 1398 mlcanopyfluxestype dtleaf_leaf$p mlcanopy_type
R 3256 5 1399 mlcanopyfluxestype dtleaf_leaf$o mlcanopy_type
R 3258 5 1401 mlcanopyfluxestype tleaf_hist_leaf mlcanopy_type
R 3262 5 1405 mlcanopyfluxestype tleaf_hist_leaf$sd mlcanopy_type
R 3263 5 1406 mlcanopyfluxestype tleaf_hist_leaf$p mlcanopy_type
R 3264 5 1407 mlcanopyfluxestype tleaf_hist_leaf$o mlcanopy_type
R 3266 5 1409 mlcanopyfluxestype swleaf_leaf mlcanopy_type
R 3271 5 1414 mlcanopyfluxestype swleaf_leaf$sd mlcanopy_type
R 3272 5 1415 mlcanopyfluxestype swleaf_leaf$p mlcanopy_type
R 3273 5 1416 mlcanopyfluxestype swleaf_leaf$o mlcanopy_type
R 3275 5 1418 mlcanopyfluxestype lwleaf_leaf mlcanopy_type
R 3279 5 1422 mlcanopyfluxestype lwleaf_leaf$sd mlcanopy_type
R 3280 5 1423 mlcanopyfluxestype lwleaf_leaf$p mlcanopy_type
R 3281 5 1424 mlcanopyfluxestype lwleaf_leaf$o mlcanopy_type
R 3283 5 1426 mlcanopyfluxestype rnleaf_leaf mlcanopy_type
R 3287 5 1430 mlcanopyfluxestype rnleaf_leaf$sd mlcanopy_type
R 3288 5 1431 mlcanopyfluxestype rnleaf_leaf$p mlcanopy_type
R 3289 5 1432 mlcanopyfluxestype rnleaf_leaf$o mlcanopy_type
R 3291 5 1434 mlcanopyfluxestype stleaf_leaf mlcanopy_type
R 3295 5 1438 mlcanopyfluxestype stleaf_leaf$sd mlcanopy_type
R 3296 5 1439 mlcanopyfluxestype stleaf_leaf$p mlcanopy_type
R 3297 5 1440 mlcanopyfluxestype stleaf_leaf$o mlcanopy_type
R 3299 5 1442 mlcanopyfluxestype shleaf_leaf mlcanopy_type
R 3303 5 1446 mlcanopyfluxestype shleaf_leaf$sd mlcanopy_type
R 3304 5 1447 mlcanopyfluxestype shleaf_leaf$p mlcanopy_type
R 3305 5 1448 mlcanopyfluxestype shleaf_leaf$o mlcanopy_type
R 3307 5 1450 mlcanopyfluxestype lhleaf_leaf mlcanopy_type
R 3311 5 1454 mlcanopyfluxestype lhleaf_leaf$sd mlcanopy_type
R 3312 5 1455 mlcanopyfluxestype lhleaf_leaf$p mlcanopy_type
R 3313 5 1456 mlcanopyfluxestype lhleaf_leaf$o mlcanopy_type
R 3315 5 1458 mlcanopyfluxestype trleaf_leaf mlcanopy_type
R 3319 5 1462 mlcanopyfluxestype trleaf_leaf$sd mlcanopy_type
R 3320 5 1463 mlcanopyfluxestype trleaf_leaf$p mlcanopy_type
R 3321 5 1464 mlcanopyfluxestype trleaf_leaf$o mlcanopy_type
R 3323 5 1466 mlcanopyfluxestype evleaf_leaf mlcanopy_type
R 3327 5 1470 mlcanopyfluxestype evleaf_leaf$sd mlcanopy_type
R 3328 5 1471 mlcanopyfluxestype evleaf_leaf$p mlcanopy_type
R 3329 5 1472 mlcanopyfluxestype evleaf_leaf$o mlcanopy_type
R 3331 5 1474 mlcanopyfluxestype gbh_leaf mlcanopy_type
R 3335 5 1478 mlcanopyfluxestype gbh_leaf$sd mlcanopy_type
R 3336 5 1479 mlcanopyfluxestype gbh_leaf$p mlcanopy_type
R 3337 5 1480 mlcanopyfluxestype gbh_leaf$o mlcanopy_type
R 3339 5 1482 mlcanopyfluxestype gbv_leaf mlcanopy_type
R 3343 5 1486 mlcanopyfluxestype gbv_leaf$sd mlcanopy_type
R 3344 5 1487 mlcanopyfluxestype gbv_leaf$p mlcanopy_type
R 3345 5 1488 mlcanopyfluxestype gbv_leaf$o mlcanopy_type
R 3347 5 1490 mlcanopyfluxestype gbc_leaf mlcanopy_type
R 3351 5 1494 mlcanopyfluxestype gbc_leaf$sd mlcanopy_type
R 3352 5 1495 mlcanopyfluxestype gbc_leaf$p mlcanopy_type
R 3353 5 1496 mlcanopyfluxestype gbc_leaf$o mlcanopy_type
R 3355 5 1498 mlcanopyfluxestype vcmax25_leaf mlcanopy_type
R 3359 5 1502 mlcanopyfluxestype vcmax25_leaf$sd mlcanopy_type
R 3360 5 1503 mlcanopyfluxestype vcmax25_leaf$p mlcanopy_type
R 3361 5 1504 mlcanopyfluxestype vcmax25_leaf$o mlcanopy_type
R 3363 5 1506 mlcanopyfluxestype jmax25_leaf mlcanopy_type
R 3367 5 1510 mlcanopyfluxestype jmax25_leaf$sd mlcanopy_type
R 3368 5 1511 mlcanopyfluxestype jmax25_leaf$p mlcanopy_type
R 3369 5 1512 mlcanopyfluxestype jmax25_leaf$o mlcanopy_type
R 3371 5 1514 mlcanopyfluxestype kp25_leaf mlcanopy_type
R 3375 5 1518 mlcanopyfluxestype kp25_leaf$sd mlcanopy_type
R 3376 5 1519 mlcanopyfluxestype kp25_leaf$p mlcanopy_type
R 3377 5 1520 mlcanopyfluxestype kp25_leaf$o mlcanopy_type
R 3379 5 1522 mlcanopyfluxestype rd25_leaf mlcanopy_type
R 3383 5 1526 mlcanopyfluxestype rd25_leaf$sd mlcanopy_type
R 3384 5 1527 mlcanopyfluxestype rd25_leaf$p mlcanopy_type
R 3385 5 1528 mlcanopyfluxestype rd25_leaf$o mlcanopy_type
R 3387 5 1530 mlcanopyfluxestype kc_leaf mlcanopy_type
R 3391 5 1534 mlcanopyfluxestype kc_leaf$sd mlcanopy_type
R 3392 5 1535 mlcanopyfluxestype kc_leaf$p mlcanopy_type
R 3393 5 1536 mlcanopyfluxestype kc_leaf$o mlcanopy_type
R 3395 5 1538 mlcanopyfluxestype ko_leaf mlcanopy_type
R 3399 5 1542 mlcanopyfluxestype ko_leaf$sd mlcanopy_type
R 3400 5 1543 mlcanopyfluxestype ko_leaf$p mlcanopy_type
R 3401 5 1544 mlcanopyfluxestype ko_leaf$o mlcanopy_type
R 3403 5 1546 mlcanopyfluxestype cp_leaf mlcanopy_type
R 3407 5 1550 mlcanopyfluxestype cp_leaf$sd mlcanopy_type
R 3408 5 1551 mlcanopyfluxestype cp_leaf$p mlcanopy_type
R 3409 5 1552 mlcanopyfluxestype cp_leaf$o mlcanopy_type
R 3411 5 1554 mlcanopyfluxestype vcmax_leaf mlcanopy_type
R 3415 5 1558 mlcanopyfluxestype vcmax_leaf$sd mlcanopy_type
R 3416 5 1559 mlcanopyfluxestype vcmax_leaf$p mlcanopy_type
R 3417 5 1560 mlcanopyfluxestype vcmax_leaf$o mlcanopy_type
R 3419 5 1562 mlcanopyfluxestype jmax_leaf mlcanopy_type
R 3423 5 1566 mlcanopyfluxestype jmax_leaf$sd mlcanopy_type
R 3424 5 1567 mlcanopyfluxestype jmax_leaf$p mlcanopy_type
R 3425 5 1568 mlcanopyfluxestype jmax_leaf$o mlcanopy_type
R 3427 5 1570 mlcanopyfluxestype kp_leaf mlcanopy_type
R 3431 5 1574 mlcanopyfluxestype kp_leaf$sd mlcanopy_type
R 3432 5 1575 mlcanopyfluxestype kp_leaf$p mlcanopy_type
R 3433 5 1576 mlcanopyfluxestype kp_leaf$o mlcanopy_type
R 3435 5 1578 mlcanopyfluxestype ceair_leaf mlcanopy_type
R 3439 5 1582 mlcanopyfluxestype ceair_leaf$sd mlcanopy_type
R 3440 5 1583 mlcanopyfluxestype ceair_leaf$p mlcanopy_type
R 3441 5 1584 mlcanopyfluxestype ceair_leaf$o mlcanopy_type
R 3443 5 1586 mlcanopyfluxestype leaf_esat_leaf mlcanopy_type
R 3447 5 1590 mlcanopyfluxestype leaf_esat_leaf$sd mlcanopy_type
R 3448 5 1591 mlcanopyfluxestype leaf_esat_leaf$p mlcanopy_type
R 3449 5 1592 mlcanopyfluxestype leaf_esat_leaf$o mlcanopy_type
R 3451 5 1594 mlcanopyfluxestype apar_leaf mlcanopy_type
R 3455 5 1598 mlcanopyfluxestype apar_leaf$sd mlcanopy_type
R 3456 5 1599 mlcanopyfluxestype apar_leaf$p mlcanopy_type
R 3457 5 1600 mlcanopyfluxestype apar_leaf$o mlcanopy_type
R 3459 5 1602 mlcanopyfluxestype je_leaf mlcanopy_type
R 3463 5 1606 mlcanopyfluxestype je_leaf$sd mlcanopy_type
R 3464 5 1607 mlcanopyfluxestype je_leaf$p mlcanopy_type
R 3465 5 1608 mlcanopyfluxestype je_leaf$o mlcanopy_type
R 3467 5 1610 mlcanopyfluxestype ac_leaf mlcanopy_type
R 3471 5 1614 mlcanopyfluxestype ac_leaf$sd mlcanopy_type
R 3472 5 1615 mlcanopyfluxestype ac_leaf$p mlcanopy_type
R 3473 5 1616 mlcanopyfluxestype ac_leaf$o mlcanopy_type
R 3475 5 1618 mlcanopyfluxestype aj_leaf mlcanopy_type
R 3479 5 1622 mlcanopyfluxestype aj_leaf$sd mlcanopy_type
R 3480 5 1623 mlcanopyfluxestype aj_leaf$p mlcanopy_type
R 3481 5 1624 mlcanopyfluxestype aj_leaf$o mlcanopy_type
R 3483 5 1626 mlcanopyfluxestype ap_leaf mlcanopy_type
R 3487 5 1630 mlcanopyfluxestype ap_leaf$sd mlcanopy_type
R 3488 5 1631 mlcanopyfluxestype ap_leaf$p mlcanopy_type
R 3489 5 1632 mlcanopyfluxestype ap_leaf$o mlcanopy_type
R 3491 5 1634 mlcanopyfluxestype agross_leaf mlcanopy_type
R 3495 5 1638 mlcanopyfluxestype agross_leaf$sd mlcanopy_type
R 3496 5 1639 mlcanopyfluxestype agross_leaf$p mlcanopy_type
R 3497 5 1640 mlcanopyfluxestype agross_leaf$o mlcanopy_type
R 3499 5 1642 mlcanopyfluxestype anet_leaf mlcanopy_type
R 3503 5 1646 mlcanopyfluxestype anet_leaf$sd mlcanopy_type
R 3504 5 1647 mlcanopyfluxestype anet_leaf$p mlcanopy_type
R 3505 5 1648 mlcanopyfluxestype anet_leaf$o mlcanopy_type
R 3507 5 1650 mlcanopyfluxestype rd_leaf mlcanopy_type
R 3511 5 1654 mlcanopyfluxestype rd_leaf$sd mlcanopy_type
R 3512 5 1655 mlcanopyfluxestype rd_leaf$p mlcanopy_type
R 3513 5 1656 mlcanopyfluxestype rd_leaf$o mlcanopy_type
R 3515 5 1658 mlcanopyfluxestype ci_leaf mlcanopy_type
R 3519 5 1662 mlcanopyfluxestype ci_leaf$sd mlcanopy_type
R 3520 5 1663 mlcanopyfluxestype ci_leaf$p mlcanopy_type
R 3521 5 1664 mlcanopyfluxestype ci_leaf$o mlcanopy_type
R 3523 5 1666 mlcanopyfluxestype cs_leaf mlcanopy_type
R 3527 5 1670 mlcanopyfluxestype cs_leaf$sd mlcanopy_type
R 3528 5 1671 mlcanopyfluxestype cs_leaf$p mlcanopy_type
R 3529 5 1672 mlcanopyfluxestype cs_leaf$o mlcanopy_type
R 3531 5 1674 mlcanopyfluxestype lwp_leaf mlcanopy_type
R 3535 5 1678 mlcanopyfluxestype lwp_leaf$sd mlcanopy_type
R 3536 5 1679 mlcanopyfluxestype lwp_leaf$p mlcanopy_type
R 3537 5 1680 mlcanopyfluxestype lwp_leaf$o mlcanopy_type
R 3539 5 1682 mlcanopyfluxestype lwp_bef_leaf mlcanopy_type
R 3543 5 1686 mlcanopyfluxestype lwp_bef_leaf$sd mlcanopy_type
R 3544 5 1687 mlcanopyfluxestype lwp_bef_leaf$p mlcanopy_type
R 3545 5 1688 mlcanopyfluxestype lwp_bef_leaf$o mlcanopy_type
R 3547 5 1690 mlcanopyfluxestype dlwp_leaf mlcanopy_type
R 3552 5 1695 mlcanopyfluxestype dlwp_leaf$sd mlcanopy_type
R 3553 5 1696 mlcanopyfluxestype dlwp_leaf$p mlcanopy_type
R 3554 5 1697 mlcanopyfluxestype dlwp_leaf$o mlcanopy_type
R 3556 5 1699 mlcanopyfluxestype lwp_hist_leaf mlcanopy_type
R 3560 5 1703 mlcanopyfluxestype lwp_hist_leaf$sd mlcanopy_type
R 3561 5 1704 mlcanopyfluxestype lwp_hist_leaf$p mlcanopy_type
R 3562 5 1705 mlcanopyfluxestype lwp_hist_leaf$o mlcanopy_type
R 3564 5 1707 mlcanopyfluxestype hs_leaf mlcanopy_type
R 3568 5 1711 mlcanopyfluxestype hs_leaf$sd mlcanopy_type
R 3569 5 1712 mlcanopyfluxestype hs_leaf$p mlcanopy_type
R 3570 5 1713 mlcanopyfluxestype hs_leaf$o mlcanopy_type
R 3572 5 1715 mlcanopyfluxestype vpd_leaf mlcanopy_type
R 3576 5 1719 mlcanopyfluxestype vpd_leaf$sd mlcanopy_type
R 3577 5 1720 mlcanopyfluxestype vpd_leaf$p mlcanopy_type
R 3578 5 1721 mlcanopyfluxestype vpd_leaf$o mlcanopy_type
R 3580 5 1723 mlcanopyfluxestype gs_leaf mlcanopy_type
R 3584 5 1727 mlcanopyfluxestype gs_leaf$sd mlcanopy_type
R 3585 5 1728 mlcanopyfluxestype gs_leaf$p mlcanopy_type
R 3586 5 1729 mlcanopyfluxestype gs_leaf$o mlcanopy_type
R 3588 5 1731 mlcanopyfluxestype gspot_leaf mlcanopy_type
R 3592 5 1735 mlcanopyfluxestype gspot_leaf$sd mlcanopy_type
R 3593 5 1736 mlcanopyfluxestype gspot_leaf$p mlcanopy_type
R 3594 5 1737 mlcanopyfluxestype gspot_leaf$o mlcanopy_type
R 3601 5 1744 mlcanopyfluxestype restart$tbp$0 mlcanopy_type
R 3602 5 1745 mlcanopyfluxestype initcold$tbp$1 mlcanopy_type
R 3603 5 1746 mlcanopyfluxestype inithistory$tbp$2 mlcanopy_type
R 3604 5 1747 mlcanopyfluxestype initallocate$tbp$3 mlcanopy_type
R 3605 5 1748 mlcanopyfluxestype init$tbp$4 mlcanopy_type
S 3631 23 5 0 0 0 3635 624 11196 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fluxprofilesolution
S 3632 1 3 1 0 6 1 3631 37719 4 3000 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 num_filter
S 3633 7 3 1 0 1657 1 3631 37730 20000004 10003000 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 filter
S 3634 1 3 3 0 1651 1 3631 37737 4 3000 A 0 0 0 0 B 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3635 14 5 0 0 0 1 3631 11196 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 60 3 0 0 0 0 0 0 0 0 0 0 0 0 28 0 624 0 0 0 0 fluxprofilesolution fluxprofilesolution 
F 3635 3 3632 3633 3634
S 3636 6 1 0 0 7 1 3631 37751 40800006 3000 A 0 0 0 0 B 0 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 3637 6 1 0 0 7 1 3631 37759 40800006 3000 A 0 0 0 0 B 0 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 3638 6 1 0 0 7 1 3631 37767 40800006 3000 A 0 0 0 0 B 0 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 3639 6 1 0 0 7 1 3631 37775 40800006 3000 A 0 0 0 0 B 0 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3687
S 3640 23 5 0 0 0 3643 624 11216 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 implicitfluxprofilesolution
S 3641 1 3 1 0 6 1 3640 37784 4 3000 A 0 0 0 0 B 0 96 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 p
S 3642 1 3 3 0 100 1 3640 37737 4 3000 A 0 0 0 0 B 0 96 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3643 14 5 0 0 0 1 3640 11216 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 64 2 0 0 0 0 0 0 0 0 0 0 0 0 96 0 624 0 0 0 0 implicitfluxprofilesolution implicitfluxprofilesolution 
F 3643 2 3641 3642
S 3644 23 5 0 0 0 3657 624 11254 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 errorcheck01
S 3645 1 3 1 0 6 1 3644 37784 4 3000 A 0 0 0 0 B 0 550 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 p
S 3646 1 3 0 0 10 1 3644 37786 4 3000 A 0 0 0 0 B 0 550 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 lambda
S 3647 7 3 0 0 1660 1 3644 37793 800004 3000 A 0 0 0 0 B 0 550 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 shsrc
S 3648 7 3 0 0 1663 1 3644 37799 800004 3000 A 0 0 0 0 B 0 550 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 etsrc
S 3649 7 3 0 0 1666 1 3644 37805 800004 3000 A 0 0 0 0 B 0 550 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 stveg
S 3650 7 3 0 0 1669 1 3644 37811 800004 3000 A 0 0 0 0 B 0 550 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tleaf_implic
S 3651 1 3 0 0 10 1 3644 37824 4 3000 A 0 0 0 0 B 0 550 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 sh0
S 3652 1 3 0 0 10 1 3644 37828 4 3000 A 0 0 0 0 B 0 550 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 et0
S 3653 1 3 0 0 10 1 3644 37832 4 3000 A 0 0 0 0 B 0 550 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 g0
S 3654 1 3 0 0 10 1 3644 37835 4 3000 A 0 0 0 0 B 0 550 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t0
S 3655 1 3 0 0 10 1 3644 37838 4 3000 A 0 0 0 0 B 0 550 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 e0
S 3656 1 3 3 0 100 1 3644 37737 4 3000 A 0 0 0 0 B 0 550 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3657 14 5 0 0 0 1 3644 11254 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 67 12 0 0 0 0 0 0 0 0 0 0 0 0 550 0 624 0 0 0 0 errorcheck01 errorcheck01 
F 3657 12 3645 3646 3647 3648 3649 3650 3651 3652 3653 3654 3655 3656
S 3658 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 3659 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 3660 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 200 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 3661 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 101 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 3662 23 5 0 0 0 3675 624 11267 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 errorcheck02
S 3663 1 3 1 0 6 1 3662 37784 4 3000 A 0 0 0 0 B 0 660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 p
S 3664 1 3 0 0 10 1 3662 37786 4 3000 A 0 0 0 0 B 0 660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 lambda
S 3665 7 3 0 0 1672 1 3662 37841 800004 3000 A 0 0 0 0 B 0 660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 avail_energy
S 3666 7 3 0 0 1675 1 3662 37793 800004 3000 A 0 0 0 0 B 0 660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 shsrc
S 3667 7 3 0 0 1678 1 3662 37799 800004 3000 A 0 0 0 0 B 0 660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 etsrc
S 3668 7 3 0 0 1681 1 3662 37805 800004 3000 A 0 0 0 0 B 0 660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 stveg
S 3669 7 3 0 0 1684 1 3662 37854 800004 3000 A 0 0 0 0 B 0 660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 storage_sh
S 3670 7 3 0 0 1687 1 3662 37865 800004 3000 A 0 0 0 0 B 0 660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 storage_et
S 3671 1 3 0 0 10 1 3662 37824 4 3000 A 0 0 0 0 B 0 660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 sh0
S 3672 1 3 0 0 10 1 3662 37828 4 3000 A 0 0 0 0 B 0 660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 et0
S 3673 1 3 0 0 10 1 3662 37832 4 3000 A 0 0 0 0 B 0 660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 g0
S 3674 1 3 3 0 100 1 3662 37737 4 3000 A 0 0 0 0 B 0 660 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3675 14 5 0 0 0 1 3662 11267 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 80 12 0 0 0 0 0 0 0 0 0 0 0 0 660 0 624 0 0 0 0 errorcheck02 errorcheck02 
F 3675 12 3663 3664 3665 3666 3667 3668 3669 3670 3671 3672 3673 3674
S 3676 23 5 0 0 0 3680 624 11244 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 wellmixed
S 3677 1 3 1 0 6 1 3676 37719 4 3000 A 0 0 0 0 B 0 769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 num_filter
S 3678 7 3 1 0 1690 1 3676 37730 20000004 10003000 A 0 0 0 0 B 0 769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 filter
S 3679 1 3 3 0 100 1 3676 37737 4 3000 A 0 0 0 0 B 0 769 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mlcanopy_inst
S 3680 14 5 0 0 0 1 3676 11244 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 93 3 0 0 0 0 0 0 0 0 0 0 0 0 769 0 624 0 0 0 0 wellmixed wellmixed 
F 3680 3 3677 3678 3679
S 3681 6 1 0 0 7 1 3676 37751 40800006 3000 A 0 0 0 0 B 0 785 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1_1
S 3682 6 1 0 0 7 1 3676 37759 40800006 3000 A 0 0 0 0 B 0 785 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2_1
S 3683 6 1 0 0 7 1 3676 37767 40800006 3000 A 0 0 0 0 B 0 785 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3_1
S 3684 6 1 0 0 7 1 3676 37876 40800006 3000 A 0 0 0 0 B 0 785 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_3695
A 3682 1 0 0 0 7 3638 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3683 1 0 0 0 7 3636 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3684 1 0 0 0 7 3639 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3685 1 0 0 0 7 3637 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3686 2 0 0 1191 7 3658 0 0 0 3686 0 0 0 0 0 0 0 0 0 0 0
A 3687 2 0 0 1156 7 3661 0 0 0 3687 0 0 0 0 0 0 0 0 0 0 0
A 3688 2 0 0 0 7 3659 0 0 0 3688 0 0 0 0 0 0 0 0 0 0 0
A 3689 2 0 0 0 7 3660 0 0 0 3689 0 0 0 0 0 0 0 0 0 0 0
A 3690 1 0 0 0 7 3683 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3691 1 0 0 941 7 3681 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3692 1 0 0 0 7 3684 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 3693 1 0 0 3232 7 3682 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
Z
