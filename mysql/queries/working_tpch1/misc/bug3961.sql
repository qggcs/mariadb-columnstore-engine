select n.n_regionkey nn, r.r_regionkey rr, n.n_nationkey, n.n_name from
(select * from nation where n_regionkey <> 3) n right join region r on
n.n_regionkey = r.r_regionkey order by 1, 2, 3, 4;
select b.n_nationkey, b.n_regionkey, b.n_name, b.n_comment from (select * from (select * from nation)a)b order by 
b.n_nationkey, b.n_name;
select b.n_nationkey, b.n_regionkey, b.n_name, b.n_comment from (select * from (select * from nation)a)b order by 
1,2,3,4;  
select b.n_nationkey, b.n_regionkey, b.n_name, b.n_comment from (select * from (select * from nation)a)b, region 
where n_regionkey=r_regionkey order by 1,2,3,4; 
