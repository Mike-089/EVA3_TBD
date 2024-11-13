delimiter $$
create procedure  agregar_pais(in id varchar(2), in nombre varchar(40))
begin
	insert into countries(country_id, country_name, region_id) value(id,nombre);
end$$
delimiter ;