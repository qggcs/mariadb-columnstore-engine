# Prior to bug 4629, this was a negative test case.  The year range was expanded from 1000 on the low end to the year 0 on the low end with the bug.

drop table if exists bug4394;
create table bug4394(c1 datetime) engine=infinidb;
insert into bug4394 values('1400-01-01 00:00:00'); 
select * from bug4394;
drop table bug4394;
