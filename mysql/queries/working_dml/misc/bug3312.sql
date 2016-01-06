drop table if exists user_prop_by_game;
drop table if exists visit;

create table user_prop_by_game(cl_id int, last_visit_date date)engine=infinidb;
create table visit(cl_id int, visit_date date)engine=infinidb;

insert into user_prop_by_game values (1, now()), (2, now());
insert into visit values (1, '2010-10-01'), (2, '2010-11-01'), (2,
'2010-10-01');

UPDATE user_prop_by_game UPBG, (SELECT cl_id, max(visit_date) AS max_date FROM
visit GROUP BY cl_id) sub SET UPBG.last_visit_date = sub.max_date WHERE
UPBG.cl_id = sub.cl_id;

select * from user_prop_by_game;

drop table if exists user_prop_by_game;
drop table if exists visit;
