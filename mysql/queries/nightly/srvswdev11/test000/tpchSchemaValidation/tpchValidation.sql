select count(l_orderkey), min(l_orderkey), max(l_orderkey) , sum(l_orderkey), avg(l_orderkey)  from lineitem;
select count(l_partkey), min(l_partkey), max(l_partkey) , sum(l_partkey), avg(l_partkey)  from lineitem;
select count(l_suppkey), min(l_suppkey), max(l_suppkey) , sum(l_suppkey), avg(l_suppkey)  from lineitem;
select count(l_linenumber), min(l_linenumber), max(l_linenumber) , sum(l_linenumber), avg(l_linenumber)  from lineitem;
select count(l_quantity), min(l_quantity), max(l_quantity) , sum(l_quantity), avg(l_quantity)  from lineitem;
select count(l_extendedprice), min(l_extendedprice), max(l_extendedprice) , sum(l_extendedprice), avg(l_extendedprice)  from lineitem;
select count(l_discount), min(l_discount), max(l_discount) , sum(l_discount), avg(l_discount)  from lineitem;
select count(l_tax), min(l_tax), max(l_tax) , sum(l_tax), avg(l_tax)  from lineitem;
select count(l_returnflag), min(l_returnflag), max(l_returnflag)  from lineitem;
select count(l_linestatus), min(l_linestatus), max(l_linestatus)  from lineitem;
select count(l_shipdate), min(l_shipdate), max(l_shipdate) from lineitem;
select count(l_commitdate), min(l_commitdate), max(l_commitdate) from lineitem;
select count(l_receiptdate), min(l_receiptdate), max(l_receiptdate) from lineitem;
select count(*) from lineitem;
select count(o_orderkey), min(o_orderkey), max(o_orderkey) , sum(o_orderkey), avg(o_orderkey)  from orders;
select count(o_custkey), min(o_custkey), max(o_custkey) , sum(o_custkey), avg(o_custkey)  from orders;
select count(o_orderstatus), min(o_orderstatus), max(o_orderstatus)  from orders;
select count(o_totalprice), min(o_totalprice), max(o_totalprice) , sum(o_totalprice), avg(o_totalprice)  from orders;
select count(o_orderdate), min(o_orderdate), max(o_orderdate) from orders;
select count(o_orderpriority), min(o_orderpriority), max(o_orderpriority) from orders;
select count(o_clerk), min(o_clerk), max(o_clerk)  from orders;
select count(o_shippriority), min(o_shippriority), max(o_shippriority)  from orders;
select count(o_comment), min(o_comment), max(o_comment)  from orders;
select count(*) from orders;
select count(n_nationkey), min(n_nationkey), max(n_nationkey) , sum(n_nationkey), avg(n_nationkey)  from nation;
select count(n_name), min(n_name), max(n_name)  from nation;
select count(n_regionkey), min(n_regionkey), max(n_regionkey) , sum(n_regionkey), avg(n_regionkey)  from nation;
select count(n_comment), min(n_comment), max(n_comment)  from nation;
select count(*) from nation;

select count(r_regionkey), min(r_regionkey), max(r_regionkey) , sum(r_regionkey), avg(r_regionkey)  from region;
select count(r_name), min(r_name), max(r_name)  from region;
select count(r_comment), min(r_comment), max(r_comment)  from region;
select count(*) from region;

select count(c_custkey), min(c_custkey), max(c_custkey) , sum(c_custkey), avg(c_custkey)  from customer;
select count(c_name), min(c_name), max(c_name)  from customer;
select count(c_address), min(c_address), max(c_address)  from customer;
select count(c_nationkey), min(c_nationkey), max(c_nationkey) , sum(c_nationkey), avg(c_nationkey)  from customer;
select count(c_phone), min(c_phone), max(c_phone)  from customer;
select count(c_acctbal), min(c_acctbal), max(c_acctbal) , sum(c_acctbal), avg(c_acctbal)  from customer;
select count(c_mktsegment), min(c_mktsegment), max(c_mktsegment)  from customer;
select count(c_comment), min(c_comment), max(c_comment)  from customer;
select count(*) from customer;

select count(s_suppkey), min(s_suppkey), max(s_suppkey) , sum(s_suppkey), avg(s_suppkey)  from supplier;
select count(s_name), min(s_name), max(s_name)  from supplier;
select count(s_address), min(s_address), max(s_address)  from supplier;
select count(s_nationkey), min(s_nationkey), max(s_nationkey) , sum(s_nationkey), avg(s_nationkey)  from supplier;
select count(s_phone), min(s_phone), max(s_phone)  from supplier;
select count(s_acctbal), min(s_acctbal), max(s_acctbal)  from supplier;
select count(s_comment), min(s_comment), max(s_comment)  from supplier;
select count(*) from supplier;

select count(ps_partkey), min(ps_partkey), max(ps_partkey) , sum(ps_partkey), avg(ps_partkey)  from partsupp;
select count(ps_suppkey), min(ps_suppkey), max(ps_suppkey) , sum(ps_suppkey), avg(ps_suppkey)  from partsupp;
select count(ps_availqty), min(ps_availqty), max(ps_availqty) , sum(ps_availqty), avg(ps_availqty)  from partsupp;
select count(ps_supplycost), min(ps_supplycost), max(ps_supplycost) , sum(ps_supplycost), avg(ps_supplycost)  from partsupp;
select count(ps_comment), min(ps_comment), max(ps_comment)  from partsupp;
select count(*) from partsupp;

select count(p_partkey), min(p_partkey), max(p_partkey) , sum(p_partkey), avg(p_partkey)  from part;
select count(p_name), min(p_name), max(p_name)  from part;
select count(p_mfgr), min(p_mfgr), max(p_mfgr)  from part;
select count(p_brand), min(p_brand), max(p_brand)  from part;
select count(p_type), min(p_type), max(p_type)  from part;
select count(p_size), min(p_size), max(p_size) , sum(p_size), avg(p_size)  from part;
select count(p_container), min(p_container), max(p_container)  from part;
select count(p_retailprice), min(p_retailprice), max(p_retailprice) , sum(p_retailprice), avg(p_retailprice)  from part;
select count(p_comment), min(p_comment), max(p_comment)  from part;
select count(*) from part;

-- The strings on lineitem take a long time.  Moved this one to a separate file so that they will run at 
-- the end.
select count(l_shipinstruct), min(l_shipinstruct), max(l_shipinstruct)  from lineitem;
select count(l_shipmode), min(l_shipmode), max(l_shipmode)  from lineitem;
select count(l_comment), min(l_comment), max(l_comment)  from lineitem;
