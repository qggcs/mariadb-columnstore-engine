select CASE WHEN NULL IS NOT NULL THEN r_regionkey='10' ELSE ''='' END from region;
select case r_regionkey=1 when 0 then "=1" else "<>1" end from region;
select * from region where case when null is null then r_regionkey else r_regionkey > 2 end = 0;
select * from region where case r_regionkey when r_regionkey = 1 then 'b' when r_regionkey=2 then "a" end > 'a';
select * from region where case r_regionkey = 1 when 1 then 'a' when r_regionkey=0 then "b" else 'else' end > 'a';
select case r_regionkey when r_regionkey = 1 then '=1' when r_regionkey=2 then "=2" > 'a' end alias from region;

