create table if not exists bug4388(
`venta_clave` int(10) DEFAULT NULL,
  `cantidad` decimal(10,3) DEFAULT NULL,
  `changev` decimal(18,4) DEFAULT NULL
) ENGINE=InfiniDB;
insert into bug4388 values (null,null,6.8000);
select coalesce(sum(changev),0) as col1 from bug4388;
select sum(co) + 0 from ( select sum(col1) as co from  ( select 0 
as col1 union all select coalesce(sum(changev),0) as col1 from 
bug4388 ) t ) res;
select sum(co) + 0 from ( select sum(col1) as co from  ( select 
coalesce(sum(changev),0) as col1 from bug4388 union all select 0 
as col1 ) t ) res;
select sum(co) + 0 from ( select sum(col1) as co from  ( select 0 
as col1 union all select coalesce(sum(6.800),0) as col1  ) t ) res;
select sum(col1) + 0 from( select 0 as col1 union all
  select sum(changev) as col1 from bug4388 ) res;
select sum(col1) from
( select 0 as col1 union all
  select sum(changev) as col1 from bug4388 ) res;
select sum(co) from (select sum(changev) as co from bug4388 ) t;
select sum(co) from ( select sum(col1) as co from (select sum(changev)
as col1 from bug4388 ) t ) res;
drop table bug4388;
