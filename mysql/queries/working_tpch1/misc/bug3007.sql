create database if not exists bug3007;
drop table if exists bug3007.bug;
create table bug3007.bug(c1 int)engine=infinidb;
insert into bug3007.bug values (1), (2);
select * from bug3007.bug;
update bug3007.bug set c1=99;
delete from bug3007.bug;
drop table if exists bug3007.bug;
drop database if exists bug3007;
