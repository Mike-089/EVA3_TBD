delimiter $$
create function conversion_temp(formula int, valor int)
returns varchar(20) deterministic
begin
	declare resu varchar(20);
    case formula
		when 1 then 
        set resu = valor + 273;
		when 2 then set resu = valor*1.8 + 32;
		when 3 then set resu = valor - 273;
		else
			set resu = "NO VALIDO";
    end case;
    return resu;
end$$
delimiter ;