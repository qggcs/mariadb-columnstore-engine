-- 5.2.2 Correlated Scalar query 2
select lo_orderdate, lo_partkey,
         sum(lo_ordtotalprice), count(*)
from lineorder l_outer
where lo_orderdate =
    ( select  max(lo_orderdate)
        from lineorder  l_subquery
        where l_subquery.lo_partkey  = l_outer.lo_partkey
        and lo_partkey < 100000
        and lo_orderdate >= 19980801
        group by lo_partkey having count(*) > 1)
and lo_orderdate >= 19980801
group by 1,2  order by 1, 2;

-- Variation that returns rows.
select lo_orderdate, lo_partkey,
         sum(lo_ordtotalprice), count(*)
from lineorder l_outer
where lo_orderdate =
    ( select  max(lo_orderdate)
        from lineorder  l_subquery
        where l_subquery.lo_partkey  = l_outer.lo_partkey
        and lo_partkey < 100000
        and lo_orderdate >= 19980301
        group by lo_partkey having count(*) > 1)
and lo_orderdate >= 19980801
group by 1,2  order by 1, 2;

