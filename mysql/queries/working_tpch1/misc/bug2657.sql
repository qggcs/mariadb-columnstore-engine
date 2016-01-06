SELECT n_nationkey, n_name as c1 FROM nation group by n_nationkey,
n_name order by substr(n_nationkey,1,2);

SELECT n_nationkey as c0, n_name as c1 FROM nation group by 
n_nationkey, n_name order by isnull(n_nationkey), n_nationkey;

SELECT n_nationkey as c0, n_name as c1 FROM nation group by 
n_nationkey, n_name order by isnull(n_name), n_name;

SELECT n_nationkey as c0, n_name as c1 FROM nation group by n_nationkey,
n_name order by substr(n_nationkey,1,2);

select cchar8, cvchar6 from datatypetestm order by isnull(cchar8), cchar8;
