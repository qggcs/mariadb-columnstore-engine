#Column BETWEEN literal values
SELECT CIDX, CINTEGER BETWEEN -2147483644 AND 2147483644 FROM DATATYPETESTM;
SELECT CIDX, CDECIMAL4_2 BETWEEN -99.98 AND -99.98 FROM DATATYPETESTM;
SELECT CIDX, CDATE BETWEEN '1400-01-02' AND '9999-12-28' FROM DATATYPETESTM;
SELECT CIDX, CCHAR9 BETWEEN 'iii' AND 'rrrrr' FROM DATATYPETESTM;
SELECT CIDX FROM DATATYPETESTM WHERE CINTEGER BETWEEN -2147483644 AND 2147483644;
SELECT CIDX FROM DATATYPETESTM WHERE CDECIMAL4_2 BETWEEN -99.98 AND -99.98;
SELECT CIDX FROM DATATYPETESTM WHERE CDATE BETWEEN '1400-01-02' AND '9999-12-28';
SELECT CIDX FROM DATATYPETESTM WHERE CCHAR9 BETWEEN 'iii' AND 'rrrrr';
#Column BETWEEN column values
SELECT CIDX, CINTEGER BETWEEN -2147483644 AND CBIGINT FROM DATATYPETESTM;
SELECT CIDX, CDECIMAL4_2 BETWEEN -99.98 AND CDECIMAL18 FROM DATATYPETESTM;
SELECT CIDX, CDATE BETWEEN '1400-01-02' AND CDATETIME FROM DATATYPETESTM;
SELECT CIDX, CCHAR9 BETWEEN 'iii' AND CCHAR255 FROM DATATYPETESTM;
SELECT CIDX FROM DATATYPETESTM WHERE CINTEGER BETWEEN -2147483644 AND CBIGINT;
SELECT CIDX FROM DATATYPETESTM WHERE CDECIMAL4_2 BETWEEN -99.98 AND CDECIMAL18;
SELECT CIDX FROM DATATYPETESTM WHERE CDATE BETWEEN '1400-01-02' AND CDATETIME;
SELECT CIDX FROM DATATYPETESTM WHERE CCHAR9 BETWEEN 'iii' AND CCHAR255;
#Column BETWEEN column values with function
#
SELECT CIDX, CIDX BETWEEN LENGTH(CCHAR5) AND LENGTH(CCHAR9) FROM DATATYPETESTM ORDER BY CIDX;
SELECT CIDX FROM DATATYPETESTM WHERE CIDX BETWEEN LENGTH(CCHAR5) AND LENGTH(CCHAR9) ORDER BY CIDX;
SELECT CIDX, SUBSTR(CCHAR5,1,2) BETWEEN SUBSTR(CCHAR3,1,2) AND SUBSTR(CCHAR9,1,2) alias FROM DATATYPETESTM ORDER BY CIDX;
SELECT CIDX FROM DATATYPETESTM WHERE SUBSTR(CCHAR5,1,2) BETWEEN SUBSTR(CCHAR3,1,2) AND SUBSTR(CCHAR9,1,2) ORDER BY CIDX;
