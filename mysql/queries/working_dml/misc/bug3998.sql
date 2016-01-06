drop table if exists bug3998a;
drop table if exists bug3998b;
drop table if exists bug3998c;
drop table if exists bug3998d;

create table bug3998a (c1 int, c2 int) engine=infinidb;
insert into bug3998a values (0,0), (1,1), (2,1), (3, 1), (null,1), (null, null);
select * from bug3998a;

create table bug3998b (c1 int, c2 int) engine=infinidb;
insert into bug3998b values (0,0), (1,1), (2,1), (3, 1), (null,1), (null, null);
select * from bug3998b;

create table bug3998c (c1 int, c2 int) engine=infinidb;
insert into bug3998c values (0,0), (1,1), (2,1), (3, 1), (null,1), (null, null);
select * from bug3998c;

create table bug3998d (c1 int, c2 int) engine=infinidb;
insert into bug3998d values (1,1), (2,1), (5, 1), (null,1), (null, null);
select * from bug3998d;

update bug3998a left join bug3998d on bug3998a.c1 = bug3998d.c1 set bug3998a.c1=9;
select * from bug3998a;

update bug3998b join bug3998d on bug3998b.c1 = bug3998d.c1 set bug3998b.c1=9;
select * from bug3998b;

update bug3998c right join bug3998d on bug3998c.c1 = bug3998d.c1 set bug3998c.c1=9;
select * from bug3998c;

drop table if exists bug3998a;
drop table if exists bug3998b;
drop table if exists bug3998c;
drop table if exists bug3998d;

create table bug3998a (c1 int, c2 int) engine=infinidb;
insert into bug3998a values (0,0), (1,1), (2,1), (3, 1), (null,1), (null, null);
select * from bug3998a;

create table bug3998b (c1 int, c2 int) engine=infinidb;
insert into bug3998b values (0,0), (1,1), (2,1), (3, 1), (null,1), (null, null);
select * from bug3998b;

create table bug3998c (c1 int, c2 int) engine=infinidb;
insert into bug3998c values (0,0), (1,1), (2,1), (3, 1), (null,1), (null, null);
select * from bug3998c;

create table bug3998d (c1 int, c2 int) engine=infinidb;
insert into bug3998d values (1,1), (2,1), (5, 1), (null,1), (null, null);
select * from bug3998d;

delete a from bug3998a a left join bug3998d d on a.c1 = d.c1;
select * from bug3998a;

delete b from bug3998b b join bug3998d d on b.c1 = d.c1;
select * from bug3998b;

delete c from bug3998c c right join bug3998d d on c.c1 = d.c1;
select * from bug3998c;

drop table if exists bug3998a;
drop table if exists bug3998b;
drop table if exists bug3998c;
drop table if exists bug3998d;
