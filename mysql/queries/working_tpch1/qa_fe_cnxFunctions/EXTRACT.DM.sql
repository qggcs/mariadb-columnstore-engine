select cidx, CDATE, EXTRACT( DAY FROM CDATE) from datatypetestm;
select cidx, CDATE, EXTRACT( WEEK FROM CDATE) from datatypetestm;
select cidx, CDATE, EXTRACT( MONTH FROM CDATE) from datatypetestm;
select cidx, CDATE, EXTRACT( QUARTER FROM CDATE) from datatypetestm;
select cidx, CDATE, EXTRACT( YEAR FROM CDATE) from datatypetestm;
select cidx, CDATE, EXTRACT( YEAR_MONTH FROM CDATE) from datatypetestm;
select cidx, CDATETIME, EXTRACT( MICROSECOND FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( SECOND FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( MINUTE FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( HOUR FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( DAY FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( WEEK FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( MONTH FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( QUARTER FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( YEAR FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( YEAR_MONTH FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( MINUTE_SECOND FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( HOUR_SECOND FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( HOUR_MINUTE FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( DAY_SECOND FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( DAY_MINUTE FROM CDATETIME) from datatypetestm;
select cidx, CDATETIME, EXTRACT( DAY_HOUR FROM CDATETIME) from datatypetestm;
select cidx, CDATE from datatypetestm where EXTRACT( DAY FROM CDATE)  = 0;
select cidx, CDATE from datatypetestm where EXTRACT( WEEK FROM CDATE)  = 0;
select cidx, CDATE from datatypetestm where EXTRACT( MONTH FROM CDATE)  = 0;
select cidx, CDATE from datatypetestm where EXTRACT( QUARTER FROM CDATE)  = 0;
select cidx, CDATE from datatypetestm where EXTRACT( YEAR FROM CDATE)  = 0;
select cidx, CDATE from datatypetestm where EXTRACT( YEAR_MONTH FROM CDATE)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( MICROSECOND FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( SECOND FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( MINUTE FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( HOUR FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( DAY FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( WEEK FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( MONTH FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( QUARTER FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( YEAR FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( YEAR_MONTH FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( MINUTE_SECOND FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( HOUR_SECOND FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( HOUR_MINUTE FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( DAY_SECOND FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( DAY_MINUTE FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( DAY_HOUR FROM CDATETIME)  = 0;
select cidx, CDATETIME from datatypetestm where EXTRACT( DAY_HOUR FROM CDATETIME) is null;
select cidx, CDATETIME from datatypetestm where isnull(EXTRACT( DAY_HOUR FROM CDATETIME));


