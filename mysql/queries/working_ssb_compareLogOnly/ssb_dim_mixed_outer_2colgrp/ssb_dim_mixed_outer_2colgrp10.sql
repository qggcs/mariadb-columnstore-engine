select  d1.d_year ,  p2_um.p_color ,  count(*)
  from  lineorder 
 right  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
 left  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
 right  join     customer c1 on (lo_custkey = c1.c_custkey) 
 left  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
 right  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
 right  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
 left  join     part p1 on (lo_partkey = p1.p_partkey) 
  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
 left  join     part p3 on (lo_partkey = p3.p_partkey) 
 right  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
      where lo_orderkey > 0  and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (d2.d_year is null or  d2.d_year = 1994)
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
group by 1,2 order by 1,2 limit 10;

select  d2.d_yearmonthnum ,  p3.p_category ,  count(*)
  from  lineorder 
 left  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
  join     part p3 on (lo_partkey = p3.p_partkey) 
 left  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
 right  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
  join     customer c4 on (lo_custkey = c4.c_custkey) 
  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
 right  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
 right  join     customer c1 on (lo_custkey = c1.c_custkey) 
 right  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
 left  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
      where lo_orderkey > 0  and (d2.d_year is null or  d2.d_year = 1994)
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
group by 1,2 order by 1,2 limit 10;

select  c1.c_city ,  p4_um.p_brand1 ,  count(*)
  from  lineorder 
 left  join     customer c1 on (lo_custkey = c1.c_custkey) 
  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
 right  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
 right  join     part p1 on (lo_partkey = p1.p_partkey) 
 right  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
 right  join     part p3 on (lo_partkey = p3.p_partkey) 
  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
 right  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
 left  join     customer c4 on (lo_custkey = c4.c_custkey) 
      where lo_orderkey > 0  and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (d2.d_year is null or  d2.d_year = 1994)
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
group by 1,2 order by 1,2 limit 10;

select  c2_um.c_nation ,  s1.s_region ,  count(*)
  from  lineorder 
 left  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
 right  join     customer c4 on (lo_custkey = c4.c_custkey) 
  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
 right  join     customer c1 on (lo_custkey = c1.c_custkey) 
  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
 left  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
  join     part p1 on (lo_partkey = p1.p_partkey) 
      where lo_orderkey > 0  and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null) group by 1,2 order by 1,2 limit 10;

select  c3_um.c_region ,  s2.s_city ,  count(*)
  from  lineorder 
 right  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
 left  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
  join     part p1 on (lo_partkey = p1.p_partkey) 
  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
  join     part p3 on (lo_partkey = p3.p_partkey) 
  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
 right  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
  join     customer c4 on (lo_custkey = c4.c_custkey) 
 left  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
 right  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
      where lo_orderkey > 0  and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (d2.d_year is null or  d2.d_year = 1994)
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null) group by 1,2 order by 1,2 limit 10;

select  c4.c_city ,  d1.d_year ,  count(*)
  from  lineorder 
 right  join     customer c4 on (lo_custkey = c4.c_custkey) 
 right  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
 right  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
  join     customer c1 on (lo_custkey = c1.c_custkey) 
 right  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
 right  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
 right  join     part p1 on (lo_partkey = p1.p_partkey) 
 right  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
  join     part p3 on (lo_partkey = p3.p_partkey) 
      where lo_orderkey > 0  and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (d2.d_year is null or  d2.d_year = 1994)
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
group by 1,2 order by 1,2 limit 10;

select  p1.p_brand1 ,  d2.d_yearmonthnum ,  count(*)
  from  lineorder 
 left  join     part p1 on (lo_partkey = p1.p_partkey) 
  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
 left  join     part p3 on (lo_partkey = p3.p_partkey) 
 right  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
 left  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
 left  join     customer c4 on (lo_custkey = c4.c_custkey) 
  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
 right  join     customer c1 on (lo_custkey = c1.c_custkey) 
 right  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
      where lo_orderkey > 0  and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (d2.d_year is null or  d2.d_year = 1994)
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
group by 1,2 order by 1,2 limit 10;

select  p2_um.p_color ,  c1.c_city ,  count(*)
  from  lineorder 
 right  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
 right  join     customer c1 on (lo_custkey = c1.c_custkey) 
 right  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
 left  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
 right  join     part p1 on (lo_partkey = p1.p_partkey) 
 left  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
  join     part p3 on (lo_partkey = p3.p_partkey) 
 left  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
      where lo_orderkey > 0  and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (d2.d_year is null or  d2.d_year = 1994)
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
group by 1,2 order by 1,2 limit 10;

select  p3.p_category ,  c2_um.c_nation ,  count(*)
  from  lineorder 
 right  join     part p3 on (lo_partkey = p3.p_partkey) 
  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
 left  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
 right  join     customer c4 on (lo_custkey = c4.c_custkey) 
  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
 left  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
  join     customer c1 on (lo_custkey = c1.c_custkey) 
 right  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
      where lo_orderkey > 0  and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
group by 1,2 order by 1,2 limit 10;

select  p4_um.p_brand1 ,  c3_um.c_region ,  count(*)
  from  lineorder 
  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
 left  join     part p1 on (lo_partkey = p1.p_partkey) 
 right  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
  join     part p3 on (lo_partkey = p3.p_partkey) 
 left  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
 left  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
 right  join     customer c4 on (lo_custkey = c4.c_custkey) 
 right  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
      where lo_orderkey > 0  and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (d2.d_year is null or  d2.d_year = 1994)
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
group by 1,2 order by 1,2 limit 10;

select  s1.s_region ,  c4.c_city ,  count(*)
  from  lineorder 
 right  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
  join     customer c4 on (lo_custkey = c4.c_custkey) 
  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
 right  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
  join     customer c1 on (lo_custkey = c1.c_custkey) 
 left  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
 right  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
 left  join     part p1 on (lo_partkey = p1.p_partkey) 
 left  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
      where lo_orderkey > 0  and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (d2.d_year is null or  d2.d_year = 1994)
group by 1,2 order by 1,2 limit 10;

select  s2.s_city ,  p1.p_brand1 ,  count(*)
  from  lineorder 
  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
 left  join     part p1 on (lo_partkey = p1.p_partkey) 
 left  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
 left  join     part p3 on (lo_partkey = p3.p_partkey) 
  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
 left  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
 left  join     customer c4 on (lo_custkey = c4.c_custkey) 
  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
 left  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
 right  join     customer c1 on (lo_custkey = c1.c_custkey) 
      where lo_orderkey > 0  and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (d2.d_year is null or  d2.d_year = 1994)
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
group by 1,2 order by 1,2 limit 10;

select  d1.d_year ,  c4.c_city ,  count(*)
  from  lineorder 
 left  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
 right  join     customer c4 on (lo_custkey = c4.c_custkey) 
 right  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
  join     part p3 on (lo_partkey = p3.p_partkey) 
  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
 right  join     part p1 on (lo_partkey = p1.p_partkey) 
  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
 left  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
      where lo_orderkey > 0  and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (d2.d_year is null or  d2.d_year = 1994)
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
group by 1,2 order by 1,2 limit 10;

select  d2.d_yearmonthnum ,  p1.p_brand1 ,  count(*)
  from  lineorder 
 right  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
 left  join     part p1 on (lo_partkey = p1.p_partkey) 
  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
 left  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
 right  join     customer c1 on (lo_custkey = c1.c_custkey) 
  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
 right  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
 left  join     customer c4 on (lo_custkey = c4.c_custkey) 
 left  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
      where lo_orderkey > 0  and (d2.d_year is null or  d2.d_year = 1994)
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
group by 1,2 order by 1,2 limit 10;

select  c1.c_city ,  p2_um.p_color ,  count(*)
  from  lineorder 
  join     customer c1 on (lo_custkey = c1.c_custkey) 
  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
  join     customer c4 on (lo_custkey = c4.c_custkey) 
  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
 left  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
 right  join     part p3 on (lo_partkey = p3.p_partkey) 
 left  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
 right  join     part p1 on (lo_partkey = p1.p_partkey) 
 left  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
      where lo_orderkey > 0  and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (d2.d_year is null or  d2.d_year = 1994)
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
group by 1,2 order by 1,2 limit 10;

select  c2_um.c_nation ,  p3.p_category ,  count(*)
  from  lineorder 
 left  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
  join     part p3 on (lo_partkey = p3.p_partkey) 
  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
 left  join     part p1 on (lo_partkey = p1.p_partkey) 
 right  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
 left  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
 right  join     customer c1 on (lo_custkey = c1.c_custkey) 
 left  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
 right  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
      where lo_orderkey > 0  and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (d2.d_year is null or  d2.d_year = 1994)
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
group by 1,2 order by 1,2 limit 10;

select  c3_um.c_region ,  p4_um.p_brand1 ,  count(*)
  from  lineorder 
  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
  join     customer c1 on (lo_custkey = c1.c_custkey) 
  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
 right  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
 right  join     customer c4 on (lo_custkey = c4.c_custkey) 
 left  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
 right  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
  join     part p3 on (lo_partkey = p3.p_partkey) 
 right  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
      where lo_orderkey > 0  and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (d2.d_year is null or  d2.d_year = 1994)
group by 1,2 order by 1,2 limit 10;

select  c4.c_city ,  s1.s_region ,  count(*)
  from  lineorder 
 left  join     customer c4 on (lo_custkey = c4.c_custkey) 
 right  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
 left  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
 right  join     part p3 on (lo_partkey = p3.p_partkey) 
 left  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
 right  join     part p1 on (lo_partkey = p1.p_partkey) 
 left  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
 left  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
 left  join     customer c1 on (lo_custkey = c1.c_custkey) 
      where lo_orderkey > 0  and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (d2.d_year is null or  d2.d_year = 1994)
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
group by 1,2 order by 1,2 limit 10;

select  p1.p_brand1 ,  s2.s_city ,  count(*)
  from  lineorder 
 right  join     part p1 on (lo_partkey = p1.p_partkey) 
 right  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
 left  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
 right  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
 left  join     customer c1 on (lo_custkey = c1.c_custkey) 
  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
 right  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
 right  join     customer c4 on (lo_custkey = c4.c_custkey) 
  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
 left  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
      where lo_orderkey > 0  and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
group by 1,2 order by 1,2 limit 10;

select  p2_um.p_color ,  d1.d_year ,  count(*)
  from  lineorder 
 left  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
 right  join     customer c4 on (lo_custkey = c4.c_custkey) 
 right  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
 right  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
 left  join     part p3 on (lo_partkey = p3.p_partkey) 
  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
  join     part p1 on (lo_partkey = p1.p_partkey) 
 right  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
      where lo_orderkey > 0  and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (d2.d_year is null or  d2.d_year = 1994)
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
group by 1,2 order by 1,2 limit 10;

select  p3.p_category ,  d2.d_yearmonthnum ,  count(*)
  from  lineorder 
  join     part p3 on (lo_partkey = p3.p_partkey) 
 right  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
  join     part p1 on (lo_partkey = p1.p_partkey) 
 left  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
 right  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
 right  join     customer c1 on (lo_custkey = c1.c_custkey) 
  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
 right  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
 right  join     customer c4 on (lo_custkey = c4.c_custkey) 
      where lo_orderkey > 0  and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (d2.d_year is null or  d2.d_year = 1994)
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
group by 1,2 order by 1,2 limit 10;

select  p4_um.p_brand1 ,  c1.c_city ,  count(*)
  from  lineorder 
 left  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
 left  join     customer c1 on (lo_custkey = c1.c_custkey) 
  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
 right  join     customer c4 on (lo_custkey = c4.c_custkey) 
 right  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
 left  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
 right  join     part p3 on (lo_partkey = p3.p_partkey) 
 right  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
 left  join     part p1 on (lo_partkey = p1.p_partkey) 
      where lo_orderkey > 0  and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (d2.d_year is null or  d2.d_year = 1994)
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null) group by 1,2 order by 1,2 limit 10;

select  s1.s_region ,  c2_um.c_nation ,  count(*)
  from  lineorder 
 right  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
  join     part p3 on (lo_partkey = p3.p_partkey) 
 right  join     dateinfo d2 on (lo_orderdate = d2.d_datekey) 
 right  join     part p1 on (lo_partkey = p1.p_partkey) 
 right  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
 right  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
 left  join     customer c1 on (lo_custkey = c1.c_custkey) 
 left  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
      where lo_orderkey > 0  and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
 and (d2.d_year is null or  d2.d_year = 1994)
 and (p1.p_mfgr <= 'MFGR#1' or p1.p_mfgr is null) and (p1.p_size <= 3 or p1.p_size is null)  and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null) group by 1,2 order by 1,2 limit 10;

select  s2.s_city ,  c3_um.c_region ,  count(*)
  from  lineorder 
 left  join     supplier s2 on (lo_suppkey = s2.s_suppkey) 
 left  join     customer c3_um on (lo_custkey = c3_um.c_custkey) 
 left  join     part p4_um on (lo_partkey = p4_um.p_partkey) 
 left  join     customer c1 on (lo_custkey = c1.c_custkey) 
 left  join     part p2_um on (lo_partkey = p2_um.p_partkey) 
 left  join     dateinfo d1 on (lo_orderdate = d1.d_datekey) 
  join     customer c4 on (lo_custkey = c4.c_custkey) 
 left  join     supplier s1 on (lo_suppkey = s1.s_suppkey) 
 left  join     customer c2_um on (lo_custkey = c2_um.c_custkey) 
 left  join     part p3 on (lo_partkey = p3.p_partkey) 
      where lo_orderkey > 0  and (s2.s_city is null or  s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3'))
 and (c3_um.c_region is null or  c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (p4_um.p_category is null or  p4_um.p_category <= 'MFGR#13')
 and (c1.c_nation is null or  c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA'))
 and (p2_um.p_mfgr <= 'MFGR#1' or p2_um.p_mfgr is null) and (p2_um.p_size <= 3 or p2_um.p_size is null)  and (d1.d_yearmonth is null or  d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994'))
 and (c4.c_region is null or  c4.c_region in ('EUROPE'))
 and (s1.s_region is null or  s1.s_region in ('EUROPE','MIDDLE EAST','ASIA'))
 and (c2_um.c_nation is null or  c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA'))
 and (p3.p_category is null or  p3.p_category <= 'MFGR#13')
group by 1,2 order by 1,2 limit 10;

