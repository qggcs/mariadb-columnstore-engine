drop table if exists month;
create table month(id int, month varchar(20), season varchar(6))engine=infinidb;
insert into month values (1, 'Jan', 'Winter');
SELECT  *,
@r AS `FIRST_VALUE(month) OVER (PARTITION BY season ORDER BY id)`
FROM    (
SELECT  m.*
FROM    (
SELECT  @_season = NULL
) vars,
month m
ORDER BY
season, id
) mo
WHERE   (CASE WHEN @_season IS NULL OR @_season <> season THEN @r := month ELSE
month END IS NOT NULL)
AND (@_season := season) IS NOT NULL;

SELECT  * FROM    ( SELECT  m.* FROM   
 ( SELECT  @_season is NULL a) vars, month m where a=m.id ORDER BY season, id ) mo;
drop table month;
