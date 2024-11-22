delimiter $$
create procedure crear_rfc()
begin
	 declare nom varchar(30);
     declare ap_pat varchar(30);
     declare ap_mat varchar(30);
     declare fech_nac date;
     declare id_p int;
    
    declare salir int default false;
    
    declare rfc_emp cursor for
    select id, nombre, apellido_pat, apellido_mat, fecha_nac from personas;
    
    declare continue handler for not found
    begin 
		set salir = true;
    end;
    
    open rfc_emp;
    
    personitas: loop
		fetch rfc_emp into id_p, nom, ap_pat, ap_mat, fech_nac;
        if salir then
			leave personitas;
        end if;
        update personas 
        set clave_rfc = generar_rfc(nom, ap_pat, ap_mat, fech_nac)
        where id = id_p;
    end loop;
    
end$$
delimiter ;