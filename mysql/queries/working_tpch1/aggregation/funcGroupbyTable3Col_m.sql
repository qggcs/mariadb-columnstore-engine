SELECT CIDX, CBIGINT, CINTEGER, CSMALLINT, COUNT(*) FROM DataTypeTestm GROUP BY CIDX, CBIGINT, CINTEGER, CSMALLINT ORDER BY CIDX;
SELECT CIDX, CDECIMAL1, CDECIMAL18, CDECIMAL18_2, COUNT(*) FROM DataTypeTestm GROUP BY CIDX, CDECIMAL1, CDECIMAL18, CDECIMAL18_2 ORDER BY CIDX;
SELECT CIDX, CDATE, CTINYINT, CDATETIME, COUNT(*) FROM DataTypeTestm GROUP BY CIDX, CDATE, CTINYINT, CDATETIME ORDER BY CIDX;
SELECT CIDX, CCHAR1, CCHAR2, CCHAR3, COUNT(*) FROM DataTypeTestm GROUP BY CIDX, CCHAR1, CCHAR2, CCHAR3 ORDER BY CIDX;
SELECT CIDX, CCHAR4, CCHAR5, CCHAR6, COUNT(*) FROM DataTypeTestm GROUP BY CIDX, CCHAR4, CCHAR5, CCHAR6 ORDER BY CIDX;
SELECT CIDX, CCHAR7, CCHAR8, CCHAR9, COUNT(*) FROM DataTypeTestm GROUP BY CIDX, CCHAR7, CCHAR8, CCHAR9 ORDER BY CIDX;
SELECT CIDX, CCHAR255, CVCHAR1, CVCHAR2, COUNT(*) FROM DataTypeTestm GROUP BY CIDX, CCHAR255, CVCHAR1, CVCHAR2 ORDER BY CIDX;
SELECT CIDX, CVCHAR3, CVCHAR4, CVCHAR5, COUNT(*) FROM DataTypeTestm GROUP BY CIDX, CVCHAR3, CVCHAR4, CVCHAR5 ORDER BY CIDX;
SELECT CIDX, CVCHAR7, CVCHAR8, CVCHAR255, COUNT(*) FROM DataTypeTestm GROUP BY CIDX, CVCHAR7, CVCHAR8, CVCHAR255 ORDER BY CIDX;
