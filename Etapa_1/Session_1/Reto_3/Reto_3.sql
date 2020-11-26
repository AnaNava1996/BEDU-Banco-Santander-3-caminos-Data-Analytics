# capturas en el README del link en github

# Usando la base de datos tienda, escribe una consulta que permita obtener el top 5 de puestos por salarios.
SELECT 
    *
FROM
    puesto
ORDER BY salario DESC
LIMIT 5;