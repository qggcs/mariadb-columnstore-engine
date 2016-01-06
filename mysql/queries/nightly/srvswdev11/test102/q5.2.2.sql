-- Reworked to use lineitem instead of demographics200.
select  n_name, sum(l_quantity), sum(l_extendedprice),
	max(l_orderkey),
	sum(l_partkey),
	avg(l_quantity),
	min(l_commitdate),
	count(l_linestatus)	
from nation, lineitem
where l_quantity = 5 and l_partkey < 100
	and n_nationkey = l_linenumber
group by n_name order by n_name;
