#Left
SELECT CIDX FROM DATATYPETESTM WHERE LENGTH(CVCHAR7) = CIDX;
SELECT CIDX FROM DATATYPETESTM WHERE LENGTH(CVCHAR7) * SIGN(CINTEGER) + POWER(CTINYINT,3) - 2048380 = CIDX;
#Right
SELECT CIDX FROM DATATYPETESTM WHERE CIDX = LENGTH(CVCHAR7);
SELECT CIDX FROM DATATYPETESTM WHERE CIDX = LENGTH(CVCHAR7) * SIGN(CINTEGER) + POWER(CTINYINT,3) - 2048380;
#Both sides
SELECT CIDX FROM DATATYPETESTM WHERE LENGTH(CVCHAR7) = SIGN(LENGTH(CVCHAR7));
SELECT CIDX FROM DATATYPETESTM WHERE POWER(SIGN(LENGTH(CVCHAR7) * SIGN(CINTEGER) + POWER(CTINYINT,3))+1,2) = SIGN(POWER(CTINYINT,3) + SIGN(CINTEGER) * LENGTH(CVCHAR7))+1;
