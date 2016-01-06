CREATE TABLE if not exists `sessions` (
  `appname` varchar(48) DEFAULT NULL,
  `appversion` varchar(128) DEFAULT NULL,
  `sessid` varchar(48) DEFAULT NULL,
  `applang` varchar(12) DEFAULT NULL,
  `stime` varchar(32) DEFAULT NULL,
  `sduration` int(25) DEFAULT NULL,
  `imei` varchar(48) DEFAULT NULL,
  `homemcc` varchar(10) DEFAULT NULL,
  `devname` varchar(32) DEFAULT NULL,
  `devsw` varchar(32) DEFAULT NULL,
  `userid` varchar(64) DEFAULT NULL,
  `endreason` varchar(32) DEFAULT NULL,
  `datavol` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `applic_device_id` varchar(128) DEFAULT NULL,
  `date_loaded` datetime DEFAULT NULL,
  `create_date` bigint(13) DEFAULT NULL
) ENGINE=InfiniDB;

create temporary table myfil SELECT devname, applang, appversion,
homemcc, COUNT(*) AS gtot, count(distinct imei) as ugtot FROM `sessions`  WHERE
appname='WP Exchange Activation Tracking OBA QA' AND DATE(stime)>='2012-05-28'
GROUP BY devname, homemcc, appversion, applang;

drop table `sessions`;
drop table myfil;

