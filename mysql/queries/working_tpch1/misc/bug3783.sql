drop table if exists bug3783;
set max_length_for_sort_data = 4096;
create table bug3783 (id int, name varchar(1000))engine=infinidb;
insert into bug3783 values (1,'yionfsdayfeiwajg'),(2,'gretsuyhejkstj jkete');
select id, hex(name) from bug3783 order by 1,2;
select id, group_concat(name) from bug3783 group by 1 order by 1;
select id, min(repeat(name,3)) from bug3783 group by 1 order by 1;
select id, repeat(name,3) from bug3783 order by 1,2;
drop table bug3783;

