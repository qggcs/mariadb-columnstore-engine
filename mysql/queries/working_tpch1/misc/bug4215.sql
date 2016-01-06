select count(*) from region group by r_name having r_name regexp '.*A.*';
select count(*) from region group by r_name, r_regionkey having r_name regexp '.*A.*' and r_name regexp '.*';
select count(*) from region group by r_name, r_regionkey having r_name regexp '.*A.*' and r_regionkey > 2;
select r_name from region where r_name regexp ".*S.*" group by r_name having r_name regexp ".*S.*" order by 1;
select * from region where r_regionkey not in (select n_regionkey from nation group by n_regionkey having n_regionkey>3 and n_regionkey < 10) order by 1;

