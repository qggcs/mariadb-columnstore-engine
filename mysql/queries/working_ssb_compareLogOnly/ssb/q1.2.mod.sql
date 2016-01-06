-- Q1.2
select sum(lo_extendedprice*lo_discount) as revenue
from dateinfo, lineorder				   -- changed order
where lo_orderdate = d_datekey
and d_yearmonth = 'Jan1994'
and lo_orderdate between 19940101 and 19940131
and lo_discount between 4 and 6
and lo_quantity between 26 and 35;
