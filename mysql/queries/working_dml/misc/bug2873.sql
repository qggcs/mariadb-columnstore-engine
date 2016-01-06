drop table if exists bug2873;
create table bug2873(id int, logtime int, filename varchar(20))engine=infinidb;
insert into bug2873 values 
	(1, unix_timestamp('2010-05-23 10:00:10'), 'Cam1.jpg'),
	(1, unix_timestamp('2010-05-23 10:00:12'), 'Cam1.jpg23'),
	(1, unix_timestamp('2010-05-23 10:00:15'), 'LLCam1.jpg'),
	(1, unix_timestamp('2010-05-23 10:00:18'), 'EECam1.jpg'),
	(1, unix_timestamp('2010-05-23 10:00:19'), 'Hey.jpg'),
	(1, unix_timestamp('2010-05-23 10:20:30'), 'Cam11.jpg'),
	(1, unix_timestamp('2010-05-23 10:22:10'), 'Cam12.jpg'),
	(1, unix_timestamp('2010-05-23 10:25:40'), 'ICam1.jpg'),
	(1, unix_timestamp('2010-05-23 10:49:12'), 'Cam1.jpg2'),
	(1, unix_timestamp('2010-05-23 10:50:10'), 'Cam15.jpg'),
	(1, unix_timestamp('2010-05-23 10:51:10'), 'Cam1.jpg');

set @maxi=(select max(logtime) from bug2873);

select if(filename like 'Cam1.jpg',filename ,'no') datei , count(*)
cnt from bug2873 where logtime > @maxi-3600 group by 1 having datei != 'no';

select if(filename rlike '^Cam1.jpg$',filename ,'no') datei from bug2873 limit 1;
select if(filename rlike '^Cam1.jpg$',filename ,'no') datei from bug2873;
select if(filename rlike '^Cam1.jpg$',filename ,'no') datei from bug2873 where if(filename rlike '^Cam1.jpg$',filename ,'no')='no' limit 1;

drop table bug2873;
