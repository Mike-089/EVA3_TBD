CREATE DEFINER=`root`@`localhost` TRIGGER `productos_AFTER_DELETE` AFTER DELETE ON `productos` FOR EACH ROW BEGIN
	insert into bitacora(id_modificado, tabla, accion)
    values(old.id, "pruebas","delete");
END