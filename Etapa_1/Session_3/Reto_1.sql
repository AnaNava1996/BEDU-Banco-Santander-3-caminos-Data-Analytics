#####	¿Cuál es el nombre de los empleados cuyo sueldo es mayor a $100,000?	########
SELECT 
    nombre, apellido_paterno, apellido_materno
FROM
    empleado
WHERE
    id_puesto IN (SELECT 
            id_puesto
        FROM
            puesto
        WHERE
            salario > 100000);

#####	¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?	############
SELECT
    id_empleado, MIN(total_ventas), MAX(total_ventas)
FROM
    (SELECT 
        clave, id_empleado, COUNT(*) total_ventas
    FROM
        venta
    GROUP BY clave , id_empleado) AS sq
GROUP BY id_empleado;


#####	¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a $5,000?	#######

SELECT 
    clave
FROM
    venta
        LEFT JOIN
    articulo USING (id_articulo)
WHERE
    articulo.precio > 5000
GROUP BY clave;

############	pregunta 3 pero incluyendo iva	############
SELECT 
    clave
FROM
    venta
        LEFT JOIN
    articulo AS a USING (id_articulo)
WHERE
    (a.precio + a.iva) > 5000
GROUP BY clave;