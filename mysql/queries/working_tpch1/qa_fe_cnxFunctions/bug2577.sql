select sum((case when r_regionkey>3 or r_regionkey<1 then 1 else 0 end)*r_regionkey) alias from region;
select (case when (n_regionkey>3 and n_nationkey<5 or n_regionkey <2 and n_nationkey >7) then 1 else 0 end) alias from nation where n_nationkey < 10 order by 1;
