#¿Cuál es el promedio de salario de los puestos?
SELECT 
    AVG(salario)
FROM
    puesto;

#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT 
    COUNT(*)
FROM
    articulo
WHERE
    nombre LIKE '%pasta%';

#¿Cuál es el salario mínimo y máximo?
SELECT 
    MAX(salario) AS maximo, MIN(salario) AS minimo
FROM
    puesto;


#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT 
    SUM(puesto.salario) AS total
FROM
    (SELECT 
        *
    FROM
        puesto
    ORDER BY id_puesto DESC
    LIMIT 5) AS puesto;
