select count(*) from (select n_regionkey, n_nationkey, count(*) c from nation group by 1, 2) n;
select sum(c+0) from (select n_regionkey, n_nationkey, count(*) c from nation group by 1, 2) n;
select count(*),sum(c) from (select n_regionkey,n_nationkey, count(*) c from nation group by 1,2) n;
select count(*), sum(c+0) from (select n_regionkey, n_nationkey, count(*) c from nation group by 1, 2) n;
select sum(1) T, sum(if(F=1,1,0)) "1", sum(if(F>=2,1,0)) "2+" from (select n_nationkey, n_regionkey, least(3, count(*)) F from nation group by 1, 2) a;
select sum(1) T, sum(if(F=1,1,0)) "1", sum(if(F=2,1,0)) "2", sum(if(F>=3,1,0)) "3+" from (select n_nationkey, n_regionkey, least(3, count(*)+n_regionkey) F from nation group by 1, 2) a;

