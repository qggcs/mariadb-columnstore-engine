select cidx, CBIGINT, ASIN(CBIGINT) from datatypetestm;
select cidx, CDECIMAL1, ASIN(CDECIMAL1) from datatypetestm;
select cidx, CDECIMAL4, ASIN(CDECIMAL4) from datatypetestm;
select cidx, CDECIMAL4_2, ASIN(CDECIMAL4_2) from datatypetestm;
select cidx, CDECIMAL5, ASIN(CDECIMAL5) from datatypetestm;
select cidx, CDECIMAL9, ASIN(CDECIMAL9) from datatypetestm;
select cidx, CDECIMAL9_2, ASIN(CDECIMAL9_2) from datatypetestm;
select cidx, CDECIMAL10, ASIN(CDECIMAL10) from datatypetestm;
select cidx, CDECIMAL18, ASIN(CDECIMAL18) from datatypetestm;
select cidx, CDECIMAL18_2, ASIN(CDECIMAL18_2) from datatypetestm;
select cidx, CINTEGER, ASIN(CINTEGER) from datatypetestm;
select cidx, CSMALLINT, ASIN(CSMALLINT) from datatypetestm;
select cidx, CTINYINT, ASIN(CTINYINT) from datatypetestm;
select cidx, ASIN(0) from datatypetestm;
select cidx, ASIN(60) from datatypetestm;
select cidx, ASIN(90) from datatypetestm;
select cidx, ASIN(180) from datatypetestm;
select cidx, ASIN(360) from datatypetestm;
select cidx, CBIGINT from datatypetestm order by ASIN(CBIGINT), cidx;
select cidx, CDECIMAL1 from datatypetestm order by ASIN(CDECIMAL1), cidx;
select cidx, CDECIMAL4 from datatypetestm order by ASIN(CDECIMAL4), cidx;
select cidx, CDECIMAL4_2 from datatypetestm order by ASIN(CDECIMAL4_2), cidx;
select cidx, CDECIMAL5 from datatypetestm order by ASIN(CDECIMAL5), cidx;
select cidx, CDECIMAL9 from datatypetestm order by ASIN(CDECIMAL9), cidx;
select cidx, CDECIMAL9_2 from datatypetestm order by ASIN(CDECIMAL9_2), cidx;
select cidx, CDECIMAL10 from datatypetestm order by ASIN(CDECIMAL10), cidx;
select cidx, CDECIMAL18 from datatypetestm order by ASIN(CDECIMAL18), cidx;
select cidx, CDECIMAL18_2 from datatypetestm order by ASIN(CDECIMAL18_2), cidx;
select cidx, CINTEGER from datatypetestm order by ASIN(CINTEGER), cidx;
select cidx, CSMALLINT from datatypetestm order by ASIN(CSMALLINT), cidx;
select cidx, CTINYINT from datatypetestm order by ASIN(CTINYINT), cidx;
