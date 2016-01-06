select lo_supplycost 
from lineorder  
where lo_partkey < 3400 and lo_suppkey < 90 and lo_discount/lo_tax < 1.4 and
lo_supplycost in 
(select col1 
 from ( select lo_supplycost col1, count(*) cnt 
	from lineorder 
	where lo_partkey < 3400 and lo_suppkey < 90 and lo_discount/lo_tax < 1.4 
	group by 1 
	having cnt > 2     
	order by cnt desc limit 100) a)
order by 1;

select count(*) from dateinfo where d_datekey in ( select d_datekey from
(select d_datekey from dateinfo group by 1 order by count(*) desc limit 10) a);
