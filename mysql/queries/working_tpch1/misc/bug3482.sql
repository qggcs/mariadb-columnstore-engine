select cidx, cdate from datatypetestm where ADDDATE(CDATE, INTERVAL 3 MICROSECOND) > 0;
select cidx, cdate from datatypetestm where SUBDATE(CDATE, INTERVAL 3 MICROSECOND) > 0;

select cidx, cdate from datatypetestm where TIMEDIFF(CDATE,'2007-02-28 22:23:0') > 0;
select cidx, cchar1 from datatypetestm where CONCAT(CCHAR1,CCHAR3,CCHAR7,'ALOHA') > 0 ;

