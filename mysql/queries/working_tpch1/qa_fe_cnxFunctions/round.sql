select cidx, cbigint, round(cbigint) from datatypetestm;
select cidx, cbigint, round(cbigint,0) from datatypetestm;
select cidx, cbigint, round(cbigint,1) from datatypetestm;
select cidx, cbigint, round(cbigint,-1) from datatypetestm;

select cidx, cdecimal4_2, round(cdecimal4_2) from datatypetestm;
select cidx, cdecimal4_2, round(cdecimal4_2,2) from datatypetestm;
select cidx, cdecimal4_2, round(cdecimal4_2,0) from datatypetestm;
select cidx, cdecimal4_2, round(cdecimal4_2,-2) from datatypetestm;
select cidx, cdecimal18_2, round(cdecimal18_2,1) from datatypetestm;
select cidx, cdecimal18_2, round(cdecimal18_2,-1) from datatypetestm;

select cidx, cbigint from datatypetestm where round(cbigint) <> cbigint;
select cidx, cbigint from datatypetestm where round(cbigint,1) <> cbigint;
select cidx, cbigint from datatypetestm where round(cbigint,2) <> cbigint;
select cidx, cbigint from datatypetestm where round(cbigint,0) <> cbigint;
select cidx, cbigint from datatypetestm where round(cbigint,-2) <> cbigint;
select cidx, cbigint from datatypetestm where round(cbigint,-1) <> cbigint;

select cidx, cbigint from datatypetestm where round(cbigint) = cbigint;
select cidx, cbigint from datatypetestm where round(cbigint,1) = cbigint;
select cidx, cbigint from datatypetestm where round(cbigint,2) = cbigint;
select cidx, cbigint from datatypetestm where round(cbigint,0) = cbigint;
select cidx, cbigint from datatypetestm where round(cbigint,-2) = cbigint;
select cidx, cbigint from datatypetestm where round(cbigint,-1) = cbigint;

select cidx, cdecimal4_2 from datatypetestm where round(cdecimal4_2,2) > cdecimal4_2;
select cidx, cdecimal4_2 from datatypetestm where round(cdecimal4_2,0) > cdecimal4_2;
select cidx, cdecimal4_2 from datatypetestm where round(cdecimal4_2,-1) > cdecimal4_2;

select cidx, cdecimal18_2 from datatypetestm where round(cdecimal18_2) < cdecimal18_2;
select cidx, cdecimal18_2 from datatypetestm where round(cdecimal18_2,1) < cdecimal18_2;
select cidx, cdecimal18_2 from datatypetestm where round(cdecimal18_2,2) < cdecimal18_2;
select cidx, cdecimal18_2 from datatypetestm where round(cdecimal18_2,0) < cdecimal18_2;
select cidx, cdecimal18_2 from datatypetestm where round(cdecimal18_2,-2) < cdecimal18_2;
select cidx, cdecimal18_2 from datatypetestm where round(cdecimal18_2,-1) < cdecimal18_2;

select round(r_regionkey, 0) from region;
select round(r_regionkey, -1) from region;
select round(r_regionkey, 1) from region;
select round(r_name, 2) from region;

select concat(n_name, round(n_nationkey, 0)) from nation;
select concat(n_name, round(n_nationkey, 1)) from nation;
select concat(n_name, round(n_nationkey, 2)) from nation;
select concat(n_name, round(n_nationkey, -1)) from nation;
select concat(n_name, round(n_nationkey, -2)) from nation;
select concat(n_name, round(n_nationkey/10, -1)) from nation;
select concat(n_name, round(n_nationkey/10, -2)) from nation;
select concat(n_name, round(n_nationkey/10, 1)) from nation;
select concat(n_name, round(n_nationkey/10, 2)) from nation;


select round(n_nationkey / n_regionkey - (n_nationkey * n_nationkey), 2) as rnd from nation, region where n_regionkey = r_regionkey order by 1;

select length(substr(n_name, round(n_nationkey / 10))) from nation;
select substr(cchar255, round(cdecimal1, 0),3) from datatypetestm where length(cchar255) > 5;

-- bug 2635, +/- large scale
select CDECIMAL9_2, round(CDECIMAL9_2, 10) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, 11) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, 12) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, 13) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, 14) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, 15) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, 16) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, 17) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, 18) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, 19) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, 20) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, 100) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, -10) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, -11) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, -12) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, -13) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, -14) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, -15) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, -16) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, -17) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, -18) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, -19) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, -20) from datatypetestm;
select CDECIMAL9_2, round(CDECIMAL9_2, -100) from datatypetestm;

