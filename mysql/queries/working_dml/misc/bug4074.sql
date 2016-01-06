drop table if exists bug3657;

CREATE TABLE `bug3657` ( `name` varchar(11) DEFAULT NULL,
    `birthdate` date DEFAULT NULL,
    `age` int(11) DEFAULT NULL,
    `id` int(11) DEFAULT NULL ) ENGINE=InfiniDB;

insert into bug3657 (name,birthdate,age,id)values("kayla",'2001-01-01',9,11);
insert into bug3657 (name,birthdate,age,id)values("kayla",'2001-01-01',9,10);
insert into bug3657 (name,birthdate,age,id)values("kayla",'2001-01-01',9,9);
insert into bug3657 (name,birthdate,age,id)values("kayla",'2001-01-01',9,8);
insert into bug3657 (name,birthdate,age,id)values("kayla",'2001-01-01',9,7);
insert into bug3657 (name,birthdate,age,id)values("kayla",'2001-01-01',9,6);

select 'q1', birthdate, age, id from bug3657;
alter table bug3657 ADD COLUMN col8 int comment 'autoincrement';
select 'q2', birthdate, age, id, col8 from bug3657;
select 'q3', birthdate, age, id, col8 from bug3657 where col8=2;
select 'q4', birthdate, age, id, col8 from bug3657 where col8=1;
select 'q5', birthdate, age, id, col8 from bug3657 where col8=6;
select calflushcache();
select 'q6', birthdate, age, id, col8 from bug3657 where col8=2;

