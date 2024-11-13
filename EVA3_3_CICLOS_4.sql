delimiter $$
create function calcular_potencia_loop(base int, expo int)
returns int deterministic
begin
    declare cont int default 1;
    miciclo: loop
		set base = base*base;
        set cont = cont + 1;
        if cont = expo then
			leave miciclo;
        end if;
    end loop miciclo;
    return base;
    
end$$
delimiter ;