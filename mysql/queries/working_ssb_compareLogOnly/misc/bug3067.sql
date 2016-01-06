
select * from (
     select F, count(*) from (select count(*) F from lineorder where
     lo_orderdate between 19940101 and 19940110 and lo_quantity <= 20 
group
     by lo_quantity ) a group by F union all
     select F, count(*) from (select count(*) F from lineorder where
     lo_orderdate between 19940101 and 19940110 and lo_quantity between 21 and 40 
group
     by lo_quantity ) a group by F) a 
order by 1, 2;

