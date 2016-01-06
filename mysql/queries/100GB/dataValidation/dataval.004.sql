-- Validate 359,654 of the 600 million rows - roughly 1 out of every 1670.  
-- Working with the functions currently available.

select * from lineitem 
where 
round(l_orderkey,-4) + 1024 = l_orderkey or
round(l_orderkey,-4) + 2048 = l_orderkey or
round(l_orderkey,-4) + 4096 = l_orderkey or
round(l_orderkey,-4) + 6144 = l_orderkey or
round(l_orderkey,-4) + 8192 = l_orderkey
order by 1, 2;
