drop table if exists bug3792;

create table bug3792 (c1 int, c2 datetime) engine=infinidb;
insert into bug3792 values (1, '9999-12-31 23:59:59');
insert into bug3792 values (2, '1400-01-01 00:00:00');
insert into bug3792 values (3, NULL);

select c1, c2, addtime(c2, '2:0:0') x from bug3792 where c1 = 1;
select c1, c2, addtime(c2, '2:0:0') x from bug3792 where c1 = 2;
select c1, c2, addtime(c2, '2:0:0') x from bug3792 where c1 = 3;

select c1, c2, subtime(c2, '2:0:0') x from bug3792 where c1 = 1;
select c1, c2, subtime(c2, '2:0:0') x from bug3792 where c1 = 2;
select c1, c2, subtime(c2, '2:0:0') x from bug3792 where c1 = 3;

drop table bug3792;
