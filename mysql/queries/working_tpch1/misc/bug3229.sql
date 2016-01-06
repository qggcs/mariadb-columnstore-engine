drop table if exists testnulldate;
create table testnulldate (id int, time_stamp datetime) ENGINE=InfiniDB;
 
insert into testnulldate values (1, '2010-11-08 17:46:44');
insert into testnulldate values (2, null);
insert into testnulldate values (3, SUBDATE('2010-11-08 17:46:44', 1));

select
  id,
  `time_stamp`,
  DATE(`time_stamp`) as `Date`,
  case when `time_stamp` is null then 'N/A' else DATE(`time_stamp`) end as
`Test1`,
  ifnull((DATE(`time_stamp`)),'N/A') as `Test2`,
  if(`time_stamp` is null, 'N/A', DATE(`time_stamp`)) as `Test3`,
  if(`time_stamp`<='2010-11-08 17:46:44',DATE(`time_stamp`),'N/A') as `Test4`,
  if(`time_stamp`<='2010-11-08 17:46:44',DATE(`time_stamp`),DATE('2010-11-08 17:46:44')) as `Test5`
from testnulldate;
 
 select
  id,
  `time_stamp`,
  YEAR(`time_stamp`) as `Date`,
  case when `time_stamp` is null then 'N/A' else YEAR(`time_stamp`) end as
`Test1`,
  ifnull((YEAR(`time_stamp`)),'N/A') as `Test2`,
  if(`time_stamp` is null, 'N/A', YEAR(`time_stamp`)) as `Test3`,
  if(`time_stamp`<='2010-11-08 17:46:44',YEAR(`time_stamp`),'N/A') as `Test4`,
  if(`time_stamp`<='2010-11-08 17:46:44',YEAR(`time_stamp`),DATE('2010-11-08 17:46:44')) as `Test5`
from testnulldate;

select
  id,
  case when `time_stamp` is null then 'N/A' end as `Test1`
from testnulldate;
 
drop table if exists testnulldate;

