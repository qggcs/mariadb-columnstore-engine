select cidx, CDATE, DATE_FORMAT(CDATE,'%W %M %Y') from datatypetestm;
select cidx, CDATE, DATE_FORMAT(CDATE,'%H:%i:%s') from datatypetestm;
select cidx, CDATE, DATE_FORMAT(CDATE,'%D %y %a %d %m %b %j %w') from datatypetestm;
select cidx, CDATETIME, DATE_FORMAT(CDATETIME,'%W %M %Y') from datatypetestm;
select cidx, CDATETIME, DATE_FORMAT(CDATETIME,'%H:%i:%s') from datatypetestm;
select cidx, CDATETIME, DATE_FORMAT(CDATETIME,'%D %y %a %d %m %b %j %l') from datatypetestm;
select cidx, CDATE from datatypetestm where DATE_FORMAT(CDATE,'%W %M %Y') <> CDATE;
select cidx, CDATE from datatypetestm where DATE_FORMAT(CDATE,'%H:%i:%s') <> CDATE;
select cidx, CDATE from datatypetestm where DATE_FORMAT(CDATE,'%D %y %a %d %m %b %j') <> CDATE;
select cidx, CDATETIME from datatypetestm where DATE_FORMAT(CDATETIME,'%W %M %Y') <> CDATETIME;
select cidx, CDATETIME from datatypetestm where DATE_FORMAT(CDATETIME,'%H:%i:%s') <> CDATETIME;
select cidx, CDATETIME from datatypetestm where DATE_FORMAT(CDATETIME,'%D %y %a %d %m %b %j %w %l') <> CDATETIME;
