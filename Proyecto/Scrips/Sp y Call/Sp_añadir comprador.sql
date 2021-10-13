DELIMITER $$
USE `almacen`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `comprador`(
	in nombre varchar (50),
		in apellido varchar (50),
        in correo varchar (100),
        in telefono varchar (15)
			
)
insert into comprador (nombre, apellido, correo, telefono) values ( nombre, apellido, correo, telefono )$$

DELIMITER ;
;