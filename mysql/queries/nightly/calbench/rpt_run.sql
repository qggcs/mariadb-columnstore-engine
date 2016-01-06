select error_message, substr(sqltext,1,20)  from run_hist  
where rundesc = @rundesc and error_message <> '' 
group by error_message, sqltext\G

select id, description, concurrent cxs, 
	sequence seq, 
 execs,
	date_format(starttime,'%T') Start,
	elapsedtime ela, 
	physical_io pio, 
	logical_io lio, 	
	substr(error_message,1,4) err,
--	rollup_last_columns rollup, 
	rowsreturned aggrows,
	substr(sqltext,1,15) sqltext, substr(MD5_Checksum_of_Results,1,3) md5
from run_hist
where rundesc = @rundesc
and ifnull(stmtdesc,' ') <> 'no-op' 
order by id;

select 	
--	substr(concat(description,ifnull(concat(' - ',stmtdesc),'')),1,30) description, 
	substr(description,1,30) Description, 
		pm_count PMs, 
		concurrent Cx, 
	execs Stmts,
      count(*) Done, 
      date_format(min(starttime),'%c-%e %T') Start, 
	case concurrent when 1 then round(sum(elapsedtime),2) 
	     else round(sum(elapsedtime)/concurrent,2) end tot_ela, 
	round(min(elapsedtime),2) min_ela, 
	round(avg(elapsedtime),2) avg_ela, 
	round(max(elapsedtime),2) max_ela, 
	concat(sum(case when length(error_message) < 4 then 0 else 1 end),' - ',substr(max(error_message),1,10)) err 
from run_hist where rundesc = @rundesc
and ifnull(stmtdesc,' ') <> 'no-op' 
group by 1,2,3 order by min(id) asc;

