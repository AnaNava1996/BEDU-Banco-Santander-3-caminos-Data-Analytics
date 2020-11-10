###########	¿Cuál es el nombre de los empleados que realizaron cada venta?
SELECT 
    e.nombre,
    e.apellido_paterno,
    e.apellido_materno,
    venta.clave
FROM
    empleado AS e
        INNER JOIN
    venta ON e.id_empleado = venta.id_empleado;


##########	¿Cuál es el nombre de los artículos que se han vendido?
SELECT DISTINCT
    articulo.nombre
FROM
    articulo
        INNER JOIN
    venta ON articulo.id_articulo = venta = id_articulo;


##########	¿Cuál es el total de cada venta?
SELECT 
    clave, SUM(precio) AS total
FROM
    venta
        JOIN
    articulo ON venta.id_articulo = articulo.id_articulo
GROUP BY clave;