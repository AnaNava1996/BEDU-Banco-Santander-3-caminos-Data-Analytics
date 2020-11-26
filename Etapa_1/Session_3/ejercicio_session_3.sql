#	EJERCICIOS_3
#Todas las consultas que realices deberás mantenerlas dentro del editor de textos de MySQL Workbench. Al finalizar, guarda este archivo, llendo al menú File > Save script.
#Para estas consultas usa RIGHT JOIN
#Obten el código de producto, nombre de producto y descripción de todos los productos.
USE classicmodels;
DESCRIBE products;
SELECT productCode, productName, productDescription FROM products;
#Obten el número de orden, estado y costo total de cada orden.
#costo total orden--> SELECT SUM(priceEach*quantityOrdered) AS total,orderNumber FROM orderdetails GROUP BY orderNumber;
SELECT orders.orderNumber, orders.status, CostoTotalOrdenes.total 
FROM orders RIGHT JOIN 
(SELECT SUM(priceEach*quantityOrdered) AS total,orderNumber FROM orderdetails GROUP BY orderNumber) AS CostoTotalOrdenes
ON orders.orderNumber=CostoTotalOrdenes.orderNumber;

#Obten el número de orden, fecha de orden, línea de orden, nombre del producto, cantidad ordenada y precio de cada pieza que muestre los detalles de cada orden.

#Obtén el número de orden, nombre del producto, el precio sugerido de fábrica (msrp) y precio de cada pieza.

#Para estas consultas usa LEFT JOIN

#Obtén el número de cliente, nombre de cliente, número de orden y estado de cada cliente.
SELECT c.customerNumber, c.customerName, o.orderNumber, o.status FROM customers AS c LEFT JOIN orders AS o USING (customerNumber) ORDER BY customerName;


#Obtén los clientes que no tienen una orden asociada.
SELECT c.customerName FROM customers AS c LEFT JOIN orders AS o ON c.customerNumber=o.customerNumber WHERE o.customerNumber is NULL;
#los que si tienen orden asociada.
SELECT DISTINCT c.customerName FROM customers AS c LEFT JOIN orders AS o ON c.customerNumber=o.customerNumber;



#Obtén el apellido de empleado, nombre de empleado, nombre de cliente, número de cheque y total, es decir, los clientes asociados a cada empleado.

SELECT 
    s.lastName,
    s.firstName,
    s.customerName,
    s.checkNumber,
    COUNT(s.customerName) AS total
FROM
    (SELECT 
        e.lastName, e.firstName, c.customerName, p.checkNumber
    FROM
        employees AS e
    INNER JOIN customers AS c ON e.employeeNumber = c.salesRepEmployeeNumber
    INNER JOIN payments AS p ON p.customerNumber = c.customerNumber
    GROUP BY e.employeeNumber , c.customerName
    ORDER BY lastname , firstName) AS s
GROUP BY s.lastName , FirstName;
#Para estas consultas usa RIGHT JOIN

#Repite los ejercicios 5 a 7 usando RIGHT JOIN.

#Escoge 3 consultas de los ejercicios anteriores, crea una vista y escribe una consulta para cada una.