drop table if exists trow;
create table trow(col1 int, col2 int) engine=infinidb;
insert into trow values(1,2),(3,4);
select * from trow;
update trow set col1 = 10;
select * from trow;
update trow set col1 = 11 where col2=20;
update trow set col1 = 11;
update trow set col1 = 12 where col2=20;
select * from trow;
delete from trow;
delete from trow where col2=20;
select * from trow;
drop table trow;