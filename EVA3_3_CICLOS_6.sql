delimiter $$
create function calcular_potencia_repeat(base int, expo int)
returns int deterministic
begin
    declare cont int default 1;
    repeat  
		set base = base*base;
        set cont = cont + 1;
    until cont = expo end repeat;
    return base;
    
end$$
delimiter ;