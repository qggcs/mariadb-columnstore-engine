drop table if exists bug2845;
create table bug2845(c1 int, c2 varchar(7), c3 varchar(30))engine=infinidb;
insert into bug2845 values (1, 'A\'s', 'Joe\'s');
select * from bug2845;
update bug2845 set c2='Bubba\'s', c3='Uncle Julio\'s';
select * from bug2845;
delete from bug2845;
select count(*) from bug2845;
drop table bug2845;

