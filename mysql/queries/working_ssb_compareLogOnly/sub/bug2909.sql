select   customer.* from     lineorder join customer on lo_custkey = c_custkey          where lo_orderdate between  
19970101 and 19971230              and lo_custkey = ( select lo_custkey from  (select lo_custkey, 
sum(lo_extendedprice) from lineorder where lo_orderdate between 19971201 and 19971230 group by 1 order by 2 desc 
limit 1 ) a );
