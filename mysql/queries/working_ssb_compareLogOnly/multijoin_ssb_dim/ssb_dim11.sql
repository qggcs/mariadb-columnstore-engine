select count(*)
  from     dateinfo d1,
    part p2_um,
    customer c1,
    part p4_um,
    customer c3_um,
    supplier s2,
    part p1,
    dateinfo d2,
    part p3,
    customer c2_um,
    supplier s1,
   lineorder 
  where lo_orderkey > 0      and lo_orderdate = d1.d_datekey
     and lo_partkey = p2_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c3_um.c_custkey
     and lo_suppkey = s2.s_suppkey
     and lo_partkey = p1.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p3.p_partkey
     and lo_custkey = c2_um.c_custkey
     and lo_suppkey = s1.s_suppkey
     and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p4_um.p_category <= 'MFGR#13'
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and d2.d_year = 1994
    and p3.p_category <= 'MFGR#13'
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
 ;

select count(*)
  from     dateinfo d2,
    part p3,
    customer c2_um,
    supplier s1,
    customer c4,
    dateinfo d1,
    part p2_um,
    customer c1,
    part p4_um,
    customer c3_um,
    supplier s2,
   lineorder 
  where lo_orderkey > 0      and lo_orderdate = d2.d_datekey
     and lo_partkey = p3.p_partkey
     and lo_custkey = c2_um.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c4.c_custkey
     and lo_orderdate = d1.d_datekey
     and lo_partkey = p2_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c3_um.c_custkey
     and lo_suppkey = s2.s_suppkey
     and d2.d_year = 1994
    and p3.p_category <= 'MFGR#13'
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c4.c_region in ('EUROPE')
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p4_um.p_category <= 'MFGR#13'
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
 ;

select count(*)
  from     customer c1,
    part p4_um,
    customer c3_um,
    supplier s2,
    part p1,
    dateinfo d2,
    part p3,
    customer c2_um,
    supplier s1,
    customer c4,
    dateinfo d1,
   lineorder 
  where lo_orderkey > 0      and lo_custkey = c1.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c3_um.c_custkey
     and lo_suppkey = s2.s_suppkey
     and lo_partkey = p1.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p3.p_partkey
     and lo_custkey = c2_um.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c4.c_custkey
     and lo_orderdate = d1.d_datekey
     and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p4_um.p_category <= 'MFGR#13'
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and d2.d_year = 1994
    and p3.p_category <= 'MFGR#13'
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c4.c_region in ('EUROPE')
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
 ;

select count(*)
  from     customer c2_um,
    supplier s1,
    customer c4,
    dateinfo d1,
    part p2_um,
    customer c1,
    part p4_um,
    customer c3_um,
    supplier s2,
    part p1,
    dateinfo d2,
   lineorder 
  where lo_orderkey > 0      and lo_custkey = c2_um.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c4.c_custkey
     and lo_orderdate = d1.d_datekey
     and lo_partkey = p2_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c3_um.c_custkey
     and lo_suppkey = s2.s_suppkey
     and lo_partkey = p1.p_partkey
     and lo_orderdate = d2.d_datekey
     and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c4.c_region in ('EUROPE')
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p4_um.p_category <= 'MFGR#13'
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and d2.d_year = 1994
 ;

select count(*)
  from     customer c3_um,
    supplier s2,
    part p1,
    dateinfo d2,
    part p3,
    customer c2_um,
    supplier s1,
    customer c4,
    dateinfo d1,
    part p2_um,
    customer c1,
   lineorder 
  where lo_orderkey > 0      and lo_custkey = c3_um.c_custkey
     and lo_suppkey = s2.s_suppkey
     and lo_partkey = p1.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p3.p_partkey
     and lo_custkey = c2_um.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c4.c_custkey
     and lo_orderdate = d1.d_datekey
     and lo_partkey = p2_um.p_partkey
     and lo_custkey = c1.c_custkey
     and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and d2.d_year = 1994
    and p3.p_category <= 'MFGR#13'
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c4.c_region in ('EUROPE')
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
 ;

select count(*)
  from     customer c4,
    dateinfo d1,
    part p2_um,
    customer c1,
    part p4_um,
    customer c3_um,
    supplier s2,
    part p1,
    dateinfo d2,
    part p3,
    customer c2_um,
   lineorder 
  where lo_orderkey > 0      and lo_custkey = c4.c_custkey
     and lo_orderdate = d1.d_datekey
     and lo_partkey = p2_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c3_um.c_custkey
     and lo_suppkey = s2.s_suppkey
     and lo_partkey = p1.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p3.p_partkey
     and lo_custkey = c2_um.c_custkey
     and c4.c_region in ('EUROPE')
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p4_um.p_category <= 'MFGR#13'
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and d2.d_year = 1994
    and p3.p_category <= 'MFGR#13'
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
 ;

select count(*)
  from     part p1,
    dateinfo d2,
    part p3,
    customer c2_um,
    supplier s1,
    customer c4,
    dateinfo d1,
    part p2_um,
    customer c1,
    part p4_um,
    customer c3_um,
   lineorder 
  where lo_orderkey > 0      and lo_partkey = p1.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p3.p_partkey
     and lo_custkey = c2_um.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c4.c_custkey
     and lo_orderdate = d1.d_datekey
     and lo_partkey = p2_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c3_um.c_custkey
     and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and d2.d_year = 1994
    and p3.p_category <= 'MFGR#13'
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c4.c_region in ('EUROPE')
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p4_um.p_category <= 'MFGR#13'
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
 ;

select count(*)
  from     part p2_um,
    customer c1,
    part p4_um,
    customer c3_um,
    supplier s2,
    part p1,
    dateinfo d2,
    part p3,
    customer c2_um,
    supplier s1,
    customer c4,
   lineorder 
  where lo_orderkey > 0      and lo_partkey = p2_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c3_um.c_custkey
     and lo_suppkey = s2.s_suppkey
     and lo_partkey = p1.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p3.p_partkey
     and lo_custkey = c2_um.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c4.c_custkey
     and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p4_um.p_category <= 'MFGR#13'
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and d2.d_year = 1994
    and p3.p_category <= 'MFGR#13'
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c4.c_region in ('EUROPE')
 ;

select count(*)
  from     part p3,
    customer c2_um,
    supplier s1,
    customer c4,
    dateinfo d1,
    part p2_um,
    customer c1,
    part p4_um,
    customer c3_um,
    supplier s2,
    part p1,
   lineorder 
  where lo_orderkey > 0      and lo_partkey = p3.p_partkey
     and lo_custkey = c2_um.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c4.c_custkey
     and lo_orderdate = d1.d_datekey
     and lo_partkey = p2_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c3_um.c_custkey
     and lo_suppkey = s2.s_suppkey
     and lo_partkey = p1.p_partkey
     and p3.p_category <= 'MFGR#13'
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c4.c_region in ('EUROPE')
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p4_um.p_category <= 'MFGR#13'
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
 ;

select count(*)
  from     part p4_um,
    customer c3_um,
    supplier s2,
    part p1,
    dateinfo d2,
    part p3,
    customer c2_um,
    supplier s1,
    customer c4,
    dateinfo d1,
    part p2_um,
   lineorder 
  where lo_orderkey > 0      and lo_partkey = p4_um.p_partkey
     and lo_custkey = c3_um.c_custkey
     and lo_suppkey = s2.s_suppkey
     and lo_partkey = p1.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p3.p_partkey
     and lo_custkey = c2_um.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c4.c_custkey
     and lo_orderdate = d1.d_datekey
     and lo_partkey = p2_um.p_partkey
     and p4_um.p_category <= 'MFGR#13'
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and d2.d_year = 1994
    and p3.p_category <= 'MFGR#13'
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c4.c_region in ('EUROPE')
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
 ;

select count(*)
  from     supplier s1,
    customer c4,
    dateinfo d1,
    part p2_um,
    customer c1,
    part p4_um,
    customer c3_um,
    supplier s2,
    part p1,
    dateinfo d2,
    part p3,
   lineorder 
  where lo_orderkey > 0      and lo_suppkey = s1.s_suppkey
     and lo_custkey = c4.c_custkey
     and lo_orderdate = d1.d_datekey
     and lo_partkey = p2_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c3_um.c_custkey
     and lo_suppkey = s2.s_suppkey
     and lo_partkey = p1.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p3.p_partkey
     and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c4.c_region in ('EUROPE')
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p4_um.p_category <= 'MFGR#13'
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and d2.d_year = 1994
    and p3.p_category <= 'MFGR#13'
 ;

select count(*)
  from     supplier s2,
    part p1,
    dateinfo d2,
    part p3,
    customer c2_um,
    supplier s1,
    customer c4,
    dateinfo d1,
    part p2_um,
    customer c1,
    part p4_um,
   lineorder 
  where lo_orderkey > 0      and lo_suppkey = s2.s_suppkey
     and lo_partkey = p1.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p3.p_partkey
     and lo_custkey = c2_um.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c4.c_custkey
     and lo_orderdate = d1.d_datekey
     and lo_partkey = p2_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p4_um.p_partkey
     and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and d2.d_year = 1994
    and p3.p_category <= 'MFGR#13'
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c4.c_region in ('EUROPE')
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p4_um.p_category <= 'MFGR#13'
 ;

select count(*)
  from     dateinfo d1,
    customer c4,
    supplier s1,
    customer c2_um,
    part p3,
    dateinfo d2,
    part p1,
    supplier s2,
    customer c3_um,
    part p4_um,
    customer c1,
   lineorder 
  where lo_orderkey > 0      and lo_orderdate = d1.d_datekey
     and lo_custkey = c4.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c2_um.c_custkey
     and lo_partkey = p3.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p1.p_partkey
     and lo_suppkey = s2.s_suppkey
     and lo_custkey = c3_um.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c1.c_custkey
     and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and c4.c_region in ('EUROPE')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and p3.p_category <= 'MFGR#13'
    and d2.d_year = 1994
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and p4_um.p_category <= 'MFGR#13'
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
 ;

select count(*)
  from     dateinfo d2,
    part p1,
    supplier s2,
    customer c3_um,
    part p4_um,
    customer c1,
    part p2_um,
    dateinfo d1,
    customer c4,
    supplier s1,
    customer c2_um,
   lineorder 
  where lo_orderkey > 0      and lo_orderdate = d2.d_datekey
     and lo_partkey = p1.p_partkey
     and lo_suppkey = s2.s_suppkey
     and lo_custkey = c3_um.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p2_um.p_partkey
     and lo_orderdate = d1.d_datekey
     and lo_custkey = c4.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c2_um.c_custkey
     and d2.d_year = 1994
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and p4_um.p_category <= 'MFGR#13'
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and c4.c_region in ('EUROPE')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
 ;

select count(*)
  from     customer c1,
    part p2_um,
    dateinfo d1,
    customer c4,
    supplier s1,
    customer c2_um,
    part p3,
    dateinfo d2,
    part p1,
    supplier s2,
    customer c3_um,
   lineorder 
  where lo_orderkey > 0      and lo_custkey = c1.c_custkey
     and lo_partkey = p2_um.p_partkey
     and lo_orderdate = d1.d_datekey
     and lo_custkey = c4.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c2_um.c_custkey
     and lo_partkey = p3.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p1.p_partkey
     and lo_suppkey = s2.s_suppkey
     and lo_custkey = c3_um.c_custkey
     and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and c4.c_region in ('EUROPE')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and p3.p_category <= 'MFGR#13'
    and d2.d_year = 1994
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
 ;

select count(*)
  from     customer c2_um,
    part p3,
    dateinfo d2,
    part p1,
    supplier s2,
    customer c3_um,
    part p4_um,
    customer c1,
    part p2_um,
    dateinfo d1,
    customer c4,
   lineorder 
  where lo_orderkey > 0      and lo_custkey = c2_um.c_custkey
     and lo_partkey = p3.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p1.p_partkey
     and lo_suppkey = s2.s_suppkey
     and lo_custkey = c3_um.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p2_um.p_partkey
     and lo_orderdate = d1.d_datekey
     and lo_custkey = c4.c_custkey
     and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and p3.p_category <= 'MFGR#13'
    and d2.d_year = 1994
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and p4_um.p_category <= 'MFGR#13'
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and c4.c_region in ('EUROPE')
 ;

select count(*)
  from     customer c3_um,
    part p4_um,
    customer c1,
    part p2_um,
    dateinfo d1,
    customer c4,
    supplier s1,
    customer c2_um,
    part p3,
    dateinfo d2,
    part p1,
   lineorder 
  where lo_orderkey > 0      and lo_custkey = c3_um.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p2_um.p_partkey
     and lo_orderdate = d1.d_datekey
     and lo_custkey = c4.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c2_um.c_custkey
     and lo_partkey = p3.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p1.p_partkey
     and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and p4_um.p_category <= 'MFGR#13'
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and c4.c_region in ('EUROPE')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and p3.p_category <= 'MFGR#13'
    and d2.d_year = 1994
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
 ;

select count(*)
  from     customer c4,
    supplier s1,
    customer c2_um,
    part p3,
    dateinfo d2,
    part p1,
    supplier s2,
    customer c3_um,
    part p4_um,
    customer c1,
    part p2_um,
   lineorder 
  where lo_orderkey > 0      and lo_custkey = c4.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c2_um.c_custkey
     and lo_partkey = p3.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p1.p_partkey
     and lo_suppkey = s2.s_suppkey
     and lo_custkey = c3_um.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p2_um.p_partkey
     and c4.c_region in ('EUROPE')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and p3.p_category <= 'MFGR#13'
    and d2.d_year = 1994
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and p4_um.p_category <= 'MFGR#13'
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
 ;

select count(*)
  from     part p1,
    supplier s2,
    customer c3_um,
    part p4_um,
    customer c1,
    part p2_um,
    dateinfo d1,
    customer c4,
    supplier s1,
    customer c2_um,
    part p3,
   lineorder 
  where lo_orderkey > 0      and lo_partkey = p1.p_partkey
     and lo_suppkey = s2.s_suppkey
     and lo_custkey = c3_um.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p2_um.p_partkey
     and lo_orderdate = d1.d_datekey
     and lo_custkey = c4.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c2_um.c_custkey
     and lo_partkey = p3.p_partkey
     and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and p4_um.p_category <= 'MFGR#13'
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and c4.c_region in ('EUROPE')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and p3.p_category <= 'MFGR#13'
 ;

select count(*)
  from     part p2_um,
    dateinfo d1,
    customer c4,
    supplier s1,
    customer c2_um,
    part p3,
    dateinfo d2,
    part p1,
    supplier s2,
    customer c3_um,
    part p4_um,
   lineorder 
  where lo_orderkey > 0      and lo_partkey = p2_um.p_partkey
     and lo_orderdate = d1.d_datekey
     and lo_custkey = c4.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c2_um.c_custkey
     and lo_partkey = p3.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p1.p_partkey
     and lo_suppkey = s2.s_suppkey
     and lo_custkey = c3_um.c_custkey
     and lo_partkey = p4_um.p_partkey
     and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and c4.c_region in ('EUROPE')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and p3.p_category <= 'MFGR#13'
    and d2.d_year = 1994
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and p4_um.p_category <= 'MFGR#13'
 ;

select count(*)
  from     part p3,
    dateinfo d2,
    part p1,
    supplier s2,
    customer c3_um,
    part p4_um,
    customer c1,
    part p2_um,
    dateinfo d1,
    customer c4,
    supplier s1,
   lineorder 
  where lo_orderkey > 0      and lo_partkey = p3.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p1.p_partkey
     and lo_suppkey = s2.s_suppkey
     and lo_custkey = c3_um.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p2_um.p_partkey
     and lo_orderdate = d1.d_datekey
     and lo_custkey = c4.c_custkey
     and lo_suppkey = s1.s_suppkey
     and p3.p_category <= 'MFGR#13'
    and d2.d_year = 1994
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and p4_um.p_category <= 'MFGR#13'
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and c4.c_region in ('EUROPE')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
 ;

select count(*)
  from     part p4_um,
    customer c1,
    part p2_um,
    dateinfo d1,
    customer c4,
    supplier s1,
    customer c2_um,
    part p3,
    dateinfo d2,
    part p1,
    supplier s2,
   lineorder 
  where lo_orderkey > 0      and lo_partkey = p4_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p2_um.p_partkey
     and lo_orderdate = d1.d_datekey
     and lo_custkey = c4.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c2_um.c_custkey
     and lo_partkey = p3.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p1.p_partkey
     and lo_suppkey = s2.s_suppkey
     and p4_um.p_category <= 'MFGR#13'
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and c4.c_region in ('EUROPE')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and p3.p_category <= 'MFGR#13'
    and d2.d_year = 1994
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
 ;

select count(*)
  from     supplier s1,
    customer c2_um,
    part p3,
    dateinfo d2,
    part p1,
    supplier s2,
    customer c3_um,
    part p4_um,
    customer c1,
    part p2_um,
    dateinfo d1,
   lineorder 
  where lo_orderkey > 0      and lo_suppkey = s1.s_suppkey
     and lo_custkey = c2_um.c_custkey
     and lo_partkey = p3.p_partkey
     and lo_orderdate = d2.d_datekey
     and lo_partkey = p1.p_partkey
     and lo_suppkey = s2.s_suppkey
     and lo_custkey = c3_um.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p2_um.p_partkey
     and lo_orderdate = d1.d_datekey
     and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and p3.p_category <= 'MFGR#13'
    and d2.d_year = 1994
    and p1.p_mfgr <= 'MFGR#1' and p1.p_size <= 37
    and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and p4_um.p_category <= 'MFGR#13'
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
 ;

select count(*)
  from     supplier s2,
    customer c3_um,
    part p4_um,
    customer c1,
    part p2_um,
    dateinfo d1,
    customer c4,
    supplier s1,
    customer c2_um,
    part p3,
    dateinfo d2,
   lineorder 
  where lo_orderkey > 0      and lo_suppkey = s2.s_suppkey
     and lo_custkey = c3_um.c_custkey
     and lo_partkey = p4_um.p_partkey
     and lo_custkey = c1.c_custkey
     and lo_partkey = p2_um.p_partkey
     and lo_orderdate = d1.d_datekey
     and lo_custkey = c4.c_custkey
     and lo_suppkey = s1.s_suppkey
     and lo_custkey = c2_um.c_custkey
     and lo_partkey = p3.p_partkey
     and lo_orderdate = d2.d_datekey
     and s2.s_city in ('ALGERIA  0','ALGERIA  1','ALGERIA  2','GERMANY  0','GERMANY  1','UNITED KI2','UNITED KI3')
    and c3_um.c_region in ('EUROPE','MIDDLE EAST','ASIA')
    and p4_um.p_category <= 'MFGR#13'
    and c1.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','GERMANY','ROMANIA')
    and p2_um.p_mfgr <= 'MFGR#1' and p2_um.p_size <= 38
    and d1.d_yearmonth in ('Jan1994','Feb1994','Mar1994','Apr1994')
    and c4.c_region in ('EUROPE')
    and s1.s_region in ('EUROPE','MIDDLE EAST','ASIA')
    and c2_um.c_nation in ('MOROCCO','RUSSIA','MOZAMBIQUE','EGYPT','JAPAN','IRAQ','BRAZIL','INDONESIA','GERMANY','ROMANIA')
    and p3.p_category <= 'MFGR#13'
    and d2.d_year = 1994
 ;

