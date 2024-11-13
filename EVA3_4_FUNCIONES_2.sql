delimiter $$
create function generar_correo(nombre varchar(20), apellido varchar(20), nombre_departamento varchar(20))
returns varchar(30) deterministic
begin
	declare correo varchar(30);
	declare inicial varchar(20);
    set inicial = SUBSTRING(nombre, 1, 1);
    
    set correo = CONCAT(inicial, '.', apellido, '@', nombre_departamento,'.com');

  return correo;
end$$
delimiter ;