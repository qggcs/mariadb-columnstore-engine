--	VIEW used by Stored Procedure
create or replace view v_temp as select * from part where p_partkey<10;
DELIMITER $$
drop procedure if exists sp_simple_select;
Create Procedure sp_simple_select( )
begin
	select * from v_temp where p_partkey < 5;
end $$

-- Simple SP with 1 arg
drop procedure if exists sp_simple_variable;
Create Procedure sp_simple_variable(in arg_key int)
begin
        select * from v_temp where p_partkey <= arg_key;
end $$
DELIMITER ;

call sp_simple_select;
call sp_simple_variable(2);
drop procedure sp_simple_select;
drop procedure sp_simple_variable;
drop view v_temp;
