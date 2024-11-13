delimiter $$
create function calcular_potencia_while(base int, expo int)
returns int deterministic
begin
    declare cont int default 1;
    while cont < expo do
		set base = base*base;
        set cont = cont + 1;
    end while;
    return base;
    
end$$
delimiter ;