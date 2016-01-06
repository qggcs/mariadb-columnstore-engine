drop table if exists bug3012;
create table bug3012 (anz int, mx varchar(20)) engine = infinidb;
insert into bug3012 values (1,'hotmail.com'), (2,'hotmail.com'), (3,'foo.com'),
(4,'www.1and1.net'), (5,'1and1.com');

select * from bug3012;
SELECT * FROM bug3012 WHERE (mx RLIKE 'hotmail' OR mx RLIKE '1and1');
SELECT * FROM bug3012 WHERE (mx RLIKE '1and1' OR mx RLIKE 'hotmail');

drop table if exists bug3012;
