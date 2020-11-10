########	Obtener el puesto de un empleado. ######################################
CREATE VIEW Empleado_puesto_004 AS
    SELECT 
        e.nombre, e.apellido_paterno, p.nombre AS puesto
    FROM
        empleado AS e
            INNER JOIN
        puesto AS p USING (id_puesto);

########	Saber qué artículos ha vendido cada empleado. ##########################
CREATE VIEW Articulos_Empleado_004 AS
    SELECT 
        e.nombre,
        e.apellido_paterno,
        a.nombre AS nombre_articulo,
        a.id_articulo
    FROM
        empleado AS e
            LEFT JOIN
        venta AS v ON e.id_empleado = v.id_venta
            RIGHT JOIN
        articulo AS a ON v.id_articulo = a.id_articulo;

########	Saber qué puesto ha tenido más ventas. #cambiar nombre de columna ######

CREATE VIEW ventas_por_puesto_004 AS
    SELECT 
        puesto.nombre, SUM(ventasE) AS Total_Ventas_Puesto
    FROM
        puesto
            JOIN
        (SELECT 
            e.nombre,
                e.apellido_paterno,
                e.id_puesto,
                COUNT(v.id_venta) AS ventasE
        FROM
            venta AS v
        JOIN empleado AS e ON v.id_empleado = e.id_empleado
        GROUP BY e.id_empleado
        ORDER BY e.id_empleado) AS venta_empleado ON puesto.id_puesto = venta_empleado.id_puesto
    GROUP BY puesto.nombre
    ORDER BY puesto.nombre;

