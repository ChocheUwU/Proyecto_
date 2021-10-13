-- Este select nos muestra los datos del comprador y si ya fue pagado el pedido o esta en espera.
    -- cuando las cubas estan en 0 es porque ya estan pagadas, de lo contrario si salen cubas es la cantidad de cubas que compro, esto para ver el precio con el total de cubas que compro
    select 
    c.nombre,
    c.apellido,
    e.direccion,
    e.cantidad,
    case 
    when e.cantidad = 0 then 'Pagado'
    else 'Espera'
    end as 'estado'
    from factura f
    inner join comprador c
    on f.id_comprador = c.id_comprador
    inner join exportacion e
    on f.id_exportacion = e.id_exportacion
    group by f.id_comprador, f.id_exportacion;