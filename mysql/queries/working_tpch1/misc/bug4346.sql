drop table if exists dim_day;
CREATE TABLE `dim_day` (
  `dayId` SMALLINT(5) DEFAULT NULL,
  `displayDate` DATE DEFAULT NULL
) ENGINE=InfiniDB DEFAULT CHARSET=utf8;
INSERT INTO dim_day (dayId, displayDate) VALUES (1,'2012-01-01') ,
(2,'2012-02-01');
SELECT STR_TO_DATE(CONCAT(YEARWEEK(displayDate,2),'-01'),'%X%V-%w')
FROM dim_day;
drop table dim_day;