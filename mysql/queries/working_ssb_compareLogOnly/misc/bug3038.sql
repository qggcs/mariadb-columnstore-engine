select count(*) as c1 from dateinfo where (d_year, d_yearmonthnum) = (1994,199402);

select count(*) as c2 from dateinfo where (d_year, d_month, d_daynuminweek) = (1993, 'February', 3);

select count(*) as c3 from dateinfo where (d_year, d_month, d_daynuminweek) in ((1993, 'February', 3), (1994, 'February',2));

select d_year, count(*) as c4 from dateinfo where (d_dayofweek, d_year) not in (('Monday', 1994), ('Tuesday', 1995)) group by 1 order by 1;

select d_year, count(*) as c5 from dateinfo where (d_dayofweek, d_year) in (('Monday', 1994), ('Tuesday', 1995)) group by 1 order by 1;

(select d_year, count(*) as c6 from dateinfo where (d_dayofweek, d_year) = ('Monday', 1994) group by 1) union 
	(select d_year, count(*) as c6 from dateinfo where (d_dayofweek, d_year) = ('Tuesday', 1995) group by 1) order by 1;

select d_dayofweek, count(*) as c7 from lineorder join part on lo_partkey = p_partkey join dateinfo on lo_orderdate = d_datekey 
	where ((lo_orderdate, p_container)) in ((19980104, 'LG BAG'), (19970204, 'LG JAR')) group by 1 order by 1;

select count(*) as c8 from lineorder where lo_orderdate in 
	(select d_datekey from dateinfo where (d_yearmonthnum, d_daynuminmonth) in ((199204, 12), (199505,11)));

select 'c10' as c10, supplier.* from supplier where (s_suppkey, s_name, s_address, s_city, s_nation, s_region, s_phone) =
	(10, 'Supplier#000000010', 'Saygah3gYWM', 'UNITED ST9', 'UNITED STATES', 'AMERICA', '34-741-346-9870');

select count(*) as c11 from supplier where (s_suppkey, s_region) <> (10, 'AMERICA');
