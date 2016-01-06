SELECT PS_SUPPKEY, ps_partkey      FROM PARTSUPP WHERE      PS_AVAILQTY
> ( SELECT 0.5 * sum(L_QUANTITY)      FROM LINEITEM WHERE  l_partkey in (select
p_partkey from part where p_partkey in (145018, 160005)) and L_PARTKEY =
PS_PARTKEY) order by 1,2;

SELECT PS_SUPPKEY, ps_partkey
 FROM PARTSUPP WHERE
PS_AVAILQTY > ( SELECT 0.5 * sum(L_QUANTITY)
FROM LINEITEM WHERE
l_suppkey in (6,47) and l_partkey in (145018, 160005)  and
l_partkey in (SELECT P_PARTKEY FROM PART WHERE p_partkey in
(145018, 160005)) and
 L_PARTKEY = PS_PARTKEY AND
 L_SUPPKEY = PS_SUPPKEY AND
 L_SHIPDATE >= date '1995-01-01' AND
 L_SHIPDATE < date '1995-01-01' + interval '1' year
 group by l_partkey, l_suppkey) order by 1,2 ;

