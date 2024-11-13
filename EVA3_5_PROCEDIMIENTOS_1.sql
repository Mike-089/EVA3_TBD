delimiter $$
create function contar_empleados()
returns int reads sql data
begin
	declare count int;
    select count(*) into count from employees;
    return count;
end$$
delimiter ;