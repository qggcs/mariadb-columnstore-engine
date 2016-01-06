-- Q3.4
select c_city, s_city, d_year, sum(lo_revenue)
as revenue
from  dateinfo, customer,supplier, lineorder		   -- changed order
where lo_custkey = c_custkey
and lo_suppkey = s_suppkey
and lo_orderdate = d_datekey
and (c_city='UNITED KI1'
or c_city='UNITED KI5')
and (s_city='UNITED KI1'
or s_city='UNITED KI5')
and d_yearmonth = 'Dec1997'
and lo_orderdate between 19971201 and 19971231		   -- added matching predicate
group by c_city, s_city, d_year
order by d_year asc, revenue desc, c_city, s_city;
