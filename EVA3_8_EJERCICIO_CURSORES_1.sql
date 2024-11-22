delimiter $$
create function generar_rfc( nom varchar(30), ap_pat varchar(30), ap_mat varchar(30), fech_nac date)
returns varchar(12) deterministic 
begin
	declare rfc varchar(12);
	declare ano varchar(4);
    declare mes varchar(2);
    declare dia varchar(2);
    declare in_pat varchar(2);
    declare in_mat varchar(1);
    declare in_nom varchar(1);
    
    set ano = year(fech_nac);
    set mes = lpad(month(fech_nac),2,'0');
    set dia = lpad(day(fech_nac),2,'0');
    set in_pat = upper(substring(ap_pat,1,2));
    set in_nom = upper(substring(nom,1,1));
    if ap_mat is not null then
		set in_mat = upper(substring(ap_mat,1,1));
	else
		set in_mat = 'X';
	end if;
    set rfc = concat(in_pat, in_mat, in_nom, ano, mes, dia);
    return rfc;
end$$
delimiter ;