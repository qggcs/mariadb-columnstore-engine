select cnt, count(*)
from (select d_month, count(*) cnt
      from dateinfo where d_year = 1992
      group by 1 order by 1) sq
group by 1 order by 1 desc;

