drop table if exists bug3952;
create table bug3952 (id int, name varchar(25));
insert into bug3952 values (1,'aaa'),(2,'bbb');
select * from bug3952 n1, (select * from bug3952)n2 where n1.id=n2.id;
drop table bug3952;
