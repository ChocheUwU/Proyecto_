DELIMITER $$
USE `almacen`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_addFactura`(
in id_cubas int,
in id_comprador int,
in id_exportacion int,
    in direccion varchar(50),
    in cantidad int
    )
BEGIN
 insert into factura (id_cubas, id_comprador, id_exportacion, direccion, cantidad)
 values (id_cubas, id_comprador, id_exportacion, direccion, cantidad);
END$$

DELIMITER ;
;