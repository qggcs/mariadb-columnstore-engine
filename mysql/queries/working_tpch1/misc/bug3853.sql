drop table if exists dw_entradas_fact;
drop table if exists dw_entradas_fact_1;

create table dw_entradas_fact (fecha date) engine=infinidb;
create table dw_entradas_fact_1 (fecha date) engine=infinidb;

insert into dw_entradas_fact values ('2010-01-01'), ('2010-02-02'), ('2010-02-27'), ('2010-03-01');
insert into dw_entradas_fact_1 values ('2010-01-01'), ('2010-02-02'), ('2010-02-27'), ('2010-03-01');


SELECT 1  NORMAL, 1  OFERTA
         FROM DW_ENTRADAS_FACT a
        WHERE a.FECHA BETWEEN '2010-02-01' and '2010-02-28' 
union all
SELECT 1  NORMAL, 1  OFERTA
          FROM DW_ENTRADAS_FACT_1 a
         WHERE a.FECHA BETWEEN '2010-02-01' and '2010-02-28';


SELECT TY.NORMAL  NORMAL ,
       TY.OFERTA  OFERTA
FROM (SELECT 1  NORMAL,
              1  OFERTA
         FROM DW_ENTRADAS_FACT a
        WHERE a.FECHA BETWEEN '2010-02-01' and '2010-02-28')  TY
union all
SELECT TY.NORMAL  NORMAL ,
       TY.OFERTA OFERTA
  FROM (SELECT 1  NORMAL,
               1  OFERTA
          FROM DW_ENTRADAS_FACT_1 a
         WHERE a.FECHA BETWEEN '2010-02-01' and '2010-02-28')  TY;


SELECT TY.NORMAL  NORMAL ,
       TY.OFERTA  OFERTA
FROM ((SELECT 1  NORMAL,
              1  OFERTA
         FROM DW_ENTRADAS_FACT
        WHERE FECHA BETWEEN '2010-02-01' and '2010-02-28')
union all
	(SELECT 1  NORMAL,
               1  OFERTA
          FROM DW_ENTRADAS_FACT_1
         WHERE FECHA BETWEEN '2010-02-01' and '2010-02-28')) AS TY;
         
         
SELECT 1  NORMAL, 1  OFERTA
         FROM DW_ENTRADAS_FACT a
        WHERE a.FECHA BETWEEN '2010-02-01' and '2010-02-28' 
union
SELECT 1  NORMAL, 1  OFERTA
          FROM DW_ENTRADAS_FACT_1 a
         WHERE a.FECHA BETWEEN '2010-02-01' and '2010-02-28';


SELECT TY.NORMAL  NORMAL ,
       TY.OFERTA  OFERTA
FROM (SELECT 1  NORMAL,
              1  OFERTA
         FROM DW_ENTRADAS_FACT a
        WHERE a.FECHA BETWEEN '2010-02-01' and '2010-02-28')  TY
union
SELECT TY.NORMAL  NORMAL ,
       TY.OFERTA OFERTA
  FROM (SELECT 1  NORMAL,
               1  OFERTA
          FROM DW_ENTRADAS_FACT_1 a
         WHERE a.FECHA BETWEEN '2010-02-01' and '2010-02-28')  TY;


SELECT TY.NORMAL  NORMAL ,
       TY.OFERTA  OFERTA
FROM ((SELECT 1  NORMAL,
              1  OFERTA
         FROM DW_ENTRADAS_FACT
        WHERE FECHA BETWEEN '2010-02-01' and '2010-02-28')
union
	(SELECT 1  NORMAL,
               1  OFERTA
          FROM DW_ENTRADAS_FACT_1
         WHERE FECHA BETWEEN '2010-02-01' and '2010-02-28')) AS TY;         


drop table if exists dw_entradas_fact;
drop table if exists dw_entradas_fact_1;

select * from region where 2=2 union select n_regionkey, n_nationkey, n_name from nation where 0=1;

