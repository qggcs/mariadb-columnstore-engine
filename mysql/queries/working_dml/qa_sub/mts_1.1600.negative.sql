drop table if exists t1;
drop table if exists t2;
drop table if exists t3;
drop table if exists t4;
drop table if exists t5;

create table t1 (id int, text varchar(20)) engine=infinidb;
insert into t1 (id, text) values (1, 'text1'), (2, 'text2'), (3, 'text3'), (4, 'text4'), (5, 'text5'), (6, 'text6'), (7, 'text7'), (8, 'text8'), (9, 'text9'), (10, 'text10'), (11, 'text11'), (12, 'text12');
select * from t1 where id not in (select id from t1 where id < 8);
# ERROR 138 (HY000) at line 10: IDB-1000: 'tt' is not joined.
# select * from t1 as tt where not exists (select id from t1 where id < 8 and (id = tt.id or id is null) having id is not null);
insert into t1 (id, text) values (1000, 'text1000'), (1001, 'text1001');
create table t2 (id int, text varchar(20)) engine=infinidb;
insert into t2 (id, text) values (1, 'text1'), (2, 'text2'), (3, 'text3'), (4, 'text4'), (5, 'text5'), (6, 'text6'), (7, 'text7'), (8, 'text8'), (9, 'text9'), (10, 'text10'), (11, 'text1'), (12, 'text2'), (13, 'text3'), (14, 'text4'), (15, 'text5'), (16, 'text6'), (17, 'text7'), (18, 'text8'), (19, 'text9'), (20, 'text10'),(21, 'text1'), (22, 'text2'), (23, 'text3'), (24, 'text4'), (25, 'text5'), (26, 'text6'), (27, 'text7'), (28, 'text8'), (29, 'text9'), (30, 'text10'), (31, 'text1'), (32, 'text2'), (33, 'text3'), (34, 'text4'), (35, 'text5'), (36, 'text6'), (37, 'text7'), (38, 'text8'), (39, 'text9'), (40, 'text10'), (41, 'text1'), (42, 'text2'), (43, 'text3'), (44, 'text4'), (45, 'text5'), (46, 'text6'), (47, 'text7'), (48, 'text8'), (49, 'text9'), (50, 'text10');
# ERROR 138 (HY000) at line 14: IDB-1000: 'a' is not joined.
# select * from t1 a left join t2 b on (a.id=b.id or b.id is null) join t1 c on (if(isnull(b.id), 1000, b.id)=c.id);
drop table t1;
drop table t2;

CREATE TABLE t1 (id INT) engine=infinidb;
CREATE TABLE t2 (id INT) engine=infinidb;
INSERT INTO t1 VALUES (1), (2);
INSERT INTO t2 VALUES (1);
# WWW - Added order bys to two queries below.
SELECT t1.id, ( SELECT COUNT(t.id) FROM t2 AS t WHERE t.id = t1.id ) AS c FROM t1 LEFT JOIN t2 USING (id) order by 1;
SELECT id, ( SELECT COUNT(t.id) FROM t2 AS t WHERE t.id = t1.id ) AS c FROM t1 LEFT JOIN t2 USING (id) order by 1;
SELECT t1.id, ( SELECT COUNT(t.id) FROM t2 AS t WHERE t.id = t1.id ) AS c FROM t1 LEFT JOIN t2 USING (id) ORDER BY t1.id;
SELECT id, ( SELECT COUNT(t.id) FROM t2 AS t WHERE t.id = t1.id ) AS c FROM t1 LEFT JOIN t2 USING (id) ORDER BY id;
DROP TABLE t1;
drop table t2;


create table t1 (a int, b int) engine=infinidb;
insert into t1 values (1,2),(3,4);
select * from t1 up where exists (select * from t1 where t1.a=up.a);
drop table t1;


CREATE TABLE t1 (id int(11) ,name varchar(10)) engine=infinidb;
INSERT INTO t1 VALUES (1,'Tim'),(2,'Rebecca'),(3,NULL);
CREATE TABLE t2 (id int(11), pet varchar(10)) engine=infinidb;
INSERT INTO t2 VALUES (1,'Fido'),(2,'Spot'),(3,'Felix');
SELECT a.*, b.* FROM (SELECT * FROM t1) AS a JOIN t2 as b on a.id=b.id;
drop table t1;
drop table t2;

CREATE TABLE `t1` ( `a` int(11)) ENGINE=infinidb;
insert into t1 values (1);
CREATE TABLE `t2` ( `b` int(11), `a` int(11)) ENGINE=infinidb;
insert into t2 values (1,2);
select t000.a, count(*) `C` FROM t1 t000 GROUP BY t000.a HAVING count(*) > (SELECT count(*) FROM t2 t001 WHERE t001.a=1);
drop table t1;
drop table t2;


CREATE TABLE t1(`IZAVORGANG_ID` VARCHAR(11),`KUERZEL` VARCHAR(10),`IZAANALYSEART_ID` VARCHAR(11),`IZAPMKZ_ID` VARCHAR(11)) engine=infinidb;
INSERT INTO t1(`IZAVORGANG_ID`,`KUERZEL`,`IZAANALYSEART_ID`,`IZAPMKZ_ID`)VALUES('D0000000001','601','D0000000001','I0000000001');
INSERT INTO t1(`IZAVORGANG_ID`,`KUERZEL`,`IZAANALYSEART_ID`,`IZAPMKZ_ID`)VALUES('D0000000002','602','D0000000001','I0000000001');
INSERT INTO t1(`IZAVORGANG_ID`,`KUERZEL`,`IZAANALYSEART_ID`,`IZAPMKZ_ID`)VALUES('D0000000003','603','D0000000001','I0000000001');
INSERT INTO t1(`IZAVORGANG_ID`,`KUERZEL`,`IZAANALYSEART_ID`,`IZAPMKZ_ID`)VALUES('D0000000004','101','D0000000001','I0000000001');
SELECT `IZAVORGANG_ID` FROM t1 WHERE `KUERZEL` IN(SELECT MIN(`KUERZEL`)`Feld1` FROM t1 WHERE `KUERZEL` LIKE'601%'And`IZAANALYSEART_ID`='D0000000001');
drop table t1;

CREATE TABLE `t1` ( `aid` int(11), `bid` int(11)) engine=infinidb;
CREATE TABLE `t2` ( `aid` int(11), `bid` int(11)) engine=infinidb;
insert into t1 values (1,1),(1,2),(2,1),(2,2);
insert into t2 values (1,2),(2,2);
select * from t1 where t1.aid not in (select aid from t2 where bid=t1.bid);
drop table t1;
drop table t2;

CREATE TABLE t1 (howmanyvalues bigint, avalue int) engine=infinidb;
INSERT INTO t1 VALUES (1, 1),(2, 1),(2, 2),(3, 1),(3, 2),(3, 3),(4, 1),(4, 2),(4, 3),(4, 4);
# WWW - Added order by below.
SELECT howmanyvalues, count(*) from t1 group by howmanyvalues order by howmanyvalues;
SELECT a.howmanyvalues, (SELECT count(*) from t1 b where b.howmanyvalues = a.howmanyvalues) as mycount from t1 a group by a.howmanyvalues;
SELECT a.howmanyvalues, (SELECT count(*) from t1 b where b.howmanyvalues+1 = a.howmanyvalues+1) as mycount from t1 a group by a.howmanyvalues;
SELECT a.howmanyvalues, (SELECT count(*) from t1 b where b.howmanyvalues = a.avalue) as mycount from t1 a group by a.howmanyvalues;
drop table t1;

create table t1 (x int) engine=infinidb;
insert into t1 values (1),(2);
# Added "as xxx" below so that error message will match when run against dml or dmlc.
select  (select b.x as xxx from t1 as b where b.x=a.x) from t1 as a where a.x=2 group by a.x;
drop table t1;

create table t1 (a int, b int) engine=infinidb;
create table t2 (a int, b int) engine=infinidb;
insert into t1 values (1,1),(1,2),(1,3),(2,4),(2,5);
insert into t2 values (1,3),(2,1);
# WWW - Added additional order by cols below.
select distinct a,b, (select max(b) from t2 where t1.b=t2.a) from t1 order by 1, 2, 3;
drop table t1;
drop table t2;



CREATE TABLE t1 (
  categoryId int(11),
  courseId int(11),
  startDate datetime,
  endDate datetime,
  createDate datetime,
  modifyDate datetime,
  attributes varchar(15)
) engine=infinidb;
INSERT INTO t1 VALUES (1,41,'2004-02-09','2010-01-01','2004-02-09','2004-02-09',''),
(1,86,'2004-08-16','2004-08-16','2004-08-16','2004-08-16',''),
(1,87,'2004-08-16','2004-08-16','2004-08-16','2004-08-16',''),
(2,52,'2004-03-15','2004-10-01','2004-03-15','2004-09-17',''),
(2,53,'2004-03-16','2004-10-01','2004-03-16','2004-09-17',''),
(2,88,'2004-08-16','2004-08-16','2004-08-16','2004-08-16',''),
(2,89,'2004-08-16','2004-08-16','2004-08-16','2004-08-16',''),
(3,51,'2004-02-09','2010-01-01','2004-02-09','2004-02-09',''),
(5,12,'2004-02-18','2010-01-01','2004-02-18','2004-02-18','');

# WWW. Replaced date with xdate below.
CREATE TABLE t2 (
  userId int(11),
  courseId int(11),
  xdate datetime
) engine=infinidb;
INSERT INTO t2 VALUES (5141,71,'2003-11-18'),
(5141,72,'2003-11-25'),(5141,41,'2004-08-06'),
(5141,52,'2004-08-06'),(5141,53,'2004-08-06'),
(5141,12,'2004-08-06'),(5141,86,'2004-10-21'),
(5141,87,'2004-10-21'),(5141,88,'2004-10-21'),
(5141,89,'2004-10-22'),(5141,51,'2004-10-26');


CREATE TABLE t3 (
  groupId int(11),
  parentId int(11),
  startDate datetime,
  endDate datetime,
  createDate datetime,
  modifyDate datetime,
  ordering int(11)
) engine=infinidb;
INSERT INTO t3 VALUES (12,9,'1400-01-01','3999-12-31','2004-01-29','2004-01-29',NULL);

CREATE TABLE t4 (
  id int(11),
  groupTypeId int(11),
  groupKey varchar(50),
  name varchar(15),
  ordering int(11),
  description varchar(15),
  createDate datetime,
  modifyDate datetime
) engine=infinidb;
INSERT INTO t4 VALUES (9,5,'stationer','stationer',0,'Stationer','2004-01-29','2004-01-29'),
(12,5,'group2','group2',0,'group2','2004-01-29','2004-01-29');

CREATE TABLE t5 (
  userId int(11),
  groupId int(11),
  createDate datetime,
  modifyDate datetime
) engine=infinidb;
INSERT INTO t5 VALUES (5141,12,'2004-08-06','2004-08-06');

select
  count(distinct t2.userid) pass,
  groupstuff.*,
  count(t2.courseid) crse,
  t1.categoryid, 
  t2.courseid,
  date_format(xdate, '%b%y') as colhead
from t2   
join t1 on t2.courseid=t1.courseid  
join
(
  select 
  t5.userid,  
  parentid,  
   parentgroup,  
   childid,  
   groupname,  
   grouptypeid  
 from t5 
 join 
 (
    select t4.id as parentid,  
      t4.name as parentgroup,  
      t4.id as childid,  
      t4.name as groupname,  
      t4.grouptypeid  
    from   t4  
 ) as gin on t5.groupid=gin.childid 
) as groupstuff on t2.userid = groupstuff.userid 
group by 
groupstuff.groupname, colhead , t2.courseid;

drop table t1;
drop table t2;
drop table t3;
drop table t4;
drop table t5;

