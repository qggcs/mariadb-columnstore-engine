select cidx, CBIGINT, CEILING(CBIGINT) from datatypetestm;
select cidx, CDECIMAL1, CEILING(CDECIMAL1) from datatypetestm;
select cidx, CDECIMAL4, CEILING(CDECIMAL4) from datatypetestm;
select cidx, CDECIMAL4_2, CEILING(CDECIMAL4_2) from datatypetestm;
select cidx, CDECIMAL5, CEILING(CDECIMAL5) from datatypetestm;
select cidx, CDECIMAL9, CEILING(CDECIMAL9) from datatypetestm;
select cidx, CDECIMAL9_2, CEILING(CDECIMAL9_2) from datatypetestm;
select cidx, CDECIMAL10, CEILING(CDECIMAL10) from datatypetestm;
select cidx, CDECIMAL18, CEILING(CDECIMAL18) from datatypetestm;
select cidx, CDECIMAL18_2, CEILING(CDECIMAL18_2) from datatypetestm;
select cidx, CINTEGER, CEILING(CINTEGER) from datatypetestm;
select cidx, CSMALLINT, CEILING(CSMALLINT) from datatypetestm;
select cidx, CTINYINT, CEILING(CTINYINT) from datatypetestm;
select cidx, CEILING(1.23) from datatypetestm;
select cidx, CEILING(-1.23) from datatypetestm;
select cidx, CEILING(0) from datatypetestm;
select cidx, CBIGINT from datatypetestm order by CEILING(CBIGINT), cidx;
select cidx, CDECIMAL1 from datatypetestm order by CEILING(CDECIMAL1), cidx;
select cidx, CDECIMAL4 from datatypetestm order by CEILING(CDECIMAL4), cidx;
select cidx, CDECIMAL4_2 from datatypetestm order by CEILING(CDECIMAL4_2), cidx;
select cidx, CDECIMAL5 from datatypetestm order by CEILING(CDECIMAL5), cidx;
select cidx, CDECIMAL9 from datatypetestm order by CEILING(CDECIMAL9), cidx;
select cidx, CDECIMAL9_2 from datatypetestm order by CEILING(CDECIMAL9_2), cidx;
select cidx, CDECIMAL10 from datatypetestm order by CEILING(CDECIMAL10), cidx;
select cidx, CDECIMAL18 from datatypetestm order by CEILING(CDECIMAL18), cidx;
select cidx, CDECIMAL18_2 from datatypetestm order by CEILING(CDECIMAL18_2), cidx;
select cidx, CINTEGER from datatypetestm order by CEILING(CINTEGER), cidx;
select cidx, CSMALLINT from datatypetestm order by CEILING(CSMALLINT), cidx;
select cidx, CTINYINT from datatypetestm order by CEILING(CTINYINT), cidx;
