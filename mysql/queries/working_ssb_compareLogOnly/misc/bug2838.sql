select count(*), d1.d_date 
from dateinfo as d1 
inner join lineorder l1 on l1.lo_orderdate = d1.d_datekey  
inner join lineorder l2 on l2.lo_orderkey = l1.lo_orderkey  
where l1.lo_orderkey < 10 and l2.lo_orderkey < 10 and 
l1.lo_linenumber <= l2.lo_linenumber 
group by d1.d_date 
order by d1.d_date;

select count(*), d1.d_date 
from dateinfo as d1 
inner join lineorder l1 on l1.lo_orderdate = d1.d_datekey  
inner join lineorder l2 on l2.lo_orderkey = l1.lo_orderkey and
l1.lo_linenumber <= l2.lo_linenumber  
where l1.lo_orderkey < 10 and l2.lo_orderkey < 10 
group by d1.d_date 
order by d1.d_date;

