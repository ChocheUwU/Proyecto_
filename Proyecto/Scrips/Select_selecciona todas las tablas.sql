-- Select
-- este select mustra todas las tablas juntas para no ir seleccionando una por una


     select * 
    from factura f
    inner join cubas c
    on f.id_cubas = c.id_cubas
    inner join comprador co
    on f.id_comprador = co.id_comprador                                               
    inner join exportacion e
    on f.id_exportacion = e.id_exportacion;