select a.c2 c12, b.c2 c22 from (select * from sub1) a left join (select * from sub2)b using (c2) where b.c2 is null;

