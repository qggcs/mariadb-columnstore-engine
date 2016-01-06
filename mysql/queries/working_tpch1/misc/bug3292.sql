drop table if exists bug3292;
create table bug3292 (c1 double, c2 float, c3 char(12)) engine=infinidb;
insert into bug3292 values 
	(5.24062, 5.24062, '5.24062'),
	(5.24062, 5.24062, '5.24062'),
	(3.24062, 3.24062, '3.24062'),
	(9.24062, 9.24062, '9.24062'),
	(-5.24062, -5.24062, '-5.24062'),
	(-3.24062, -3.24062, '-3.24062'),
	(-9.24062, -9.24062, '-9.24062'),
	(5.24562, 5.24562, '5.24562'),
	(3.24562, 3.24562, '3.24562'),
	(9.94562, 9.94562, '9.94562'),
	(-5.24562, -5.24562, '-5.24562'),
	(-3.24562, -3.24562, '-3.24562'),
	(-9.94562, -9.94562, '-9.94562'),
	(-3.2e-10, -3.2e-10, '-3.2e-10'),
	(3.2e-10, 3.2e-10, '3.2e-10'),
	(-3.2e10, -3.2e10, '-3.2e10'),
	(3.2e10, 3.2e10, '3.2e10'),
	(-3.2e30, -3.2e30, '-3.2e30'),
	(3.2e30, 3.2e30, '3.2e30');

select c1, format(c1, 0), format(c2,0), format(c3,0) from bug3292;
select c1, format(c1, 1), format(c2,1), format(c3,1) from bug3292;
select c1, format(c1, 2), format(c2,2), format(c3,2) from bug3292;
select c1, format(c1, 3), format(c2,2), format(c3,2) from bug3292;
select c1, format(c1, 4), format(c2,2), format(c3,2) from bug3292;
select c1, format(c1, 5), format(c2,2), format(c3,2) from bug3292;
select c1, format(c1, 6), format(c2,6), format(c3,6) from bug3292;
select c1, format(c1, -1), format(c2,-1), format(c3,-1) from bug3292;

drop table if exists bug3292;
