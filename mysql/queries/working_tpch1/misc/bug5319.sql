DROP TABLE IF EXISTS bug5319_a;
CREATE TABLE `bug5319_a` (
  `col1` int(11) DEFAULT NULL,
  `col2` int(11) DEFAULT NULL
) ENGINE=InfiniDB;
insert into bug5319_a values (1,2);
insert into bug5319_a values (1,2);

DROP TABLE IF EXISTS bug5319_b;
CREATE TABLE `bug5319_b` (
  `col1` int(11) DEFAULT NULL,
  `col2` int(11) DEFAULT NULL
) ENGINE=InfiniDB;
insert into bug5319_b values (1,2);
insert into bug5319_b values (1,3);
insert into bug5319_b values (1,4);

DROP VIEW IF EXISTS view_bug5319_b;
create view view_bug5319_b as select bug5319_b.col1 AS col1, bug5319_b.col2 AS col2,sum(bug5319_b.col2) AS
kensyu_gk_total from bug5319_b group by bug5319_b.col1,bug5319_b.col2;
Select bug5319_a.col1,bv.col2 from bug5319_a left join view_bug5319_b bv on (bug5319_a.col1 = bv.col1) order by 1, 2 ;
Select bug5319_a.col1,bv.col2 from bug5319_a join view_bug5319_b bv on (bug5319_a.col1 = bv.col1) order by 1, 2;
Select bug5319_a.col1,bv.col2 from bug5319_a right join view_bug5319_b bv on (bug5319_a.col1 = bv.col1) order by 1, 2;
DROP TABLE bug5319_a;
DROP TABLE bug5319_b;
DROP VIEW view_bug5319_b;

