set max_length_for_sort_data = 4000;
select r_regionkey, group_concat(r_name) from region group by 1 order by 1;
select group_concat(r_name) from region order by 1;
select r_name, group_concat(r_comment) from region group by 1 order by 1,2 desc; 
set max_length_for_sort_data = 1024;

