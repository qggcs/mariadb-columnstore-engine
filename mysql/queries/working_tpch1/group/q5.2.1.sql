-- Reworked to use lineitem instead of demographics200.
select  n_name, sum(l_quantity), sum(l_extendedprice),
        max(l_quantity),
        sum(l_partkey),
        avg(l_suppkey),
        min(l_extendedprice),
        max(l_discount),
        count(l_shipdate),
        avg(l_tax)
from nation, lineitem
where l_suppkey between 10 and 70
        and n_regionkey = 1
        and n_nationkey = l_linenumber
group by n_name order by n_name;
