DELIMITER $$
USE `almacen`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `exportacion`(
	vdireccion varchar (100),
        id_cubas int,
        vcantidad int
			

)
insert into exportacion ( direccion, id_cubas, cantidad) values ( vdireccion, id_cubas, vcantidad)$$

DELIMITER ;
;