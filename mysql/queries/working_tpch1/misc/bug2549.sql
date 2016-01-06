select sub5.c1 as sub5c1, sub1.c1 as sub1c1 from sub5 left join sub1 using (c1) order by 1;

select count(*) from sub5 left join sub1 using (c1);

select distinct sub5.c1 from sub5 left join sub1 using (c1) order by 1;

select sub5.s3 as sub5s3, sub2.s3 as sub2s3 from sub5 left join sub2 using (s3) where sub5.c1 <= 7 order by 1, 2;

select count(*) from sub5 left join sub2 using (s3) where sub5.c1 <= 7;

select sub5.s2, sub2.c2 from sub5 left join sub2 using (s3, s2) group by 1, 2 order by 1, 2;

select count(*) from sub5 right join sub1 using (c1);

select count(*) from sub5 left join sub1 on sub5.c3 = sub1.c3;

