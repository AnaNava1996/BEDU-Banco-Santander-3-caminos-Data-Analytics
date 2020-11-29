USE classicmodels;
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre empiece con a.
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE "A%";
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre termina con on.
SELECT employeeNumber, lastName, firstName FROM employees WHERE lastName LIKE "%on"; #/*on$/i
SELECT employeeNumber, lastName, firstName FROM employees WHERE lastName RLIKE "on$"; 
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre incluye la cadena on.
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE "%on%" OR lastName LIKE "%on%";
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyos nombres tienen tres letras e inician con T y finalizan con m.
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE "T_m";
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre no inicia con B.
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName NOT LIKE "B%";
#Dentro de la tabla products, obten el código de producto y nombre de los productos cuyo código incluye la cadena _20.
describe products;
SELECT productCode, productName FROM products WHERE productCode LIKE "%\_20%";
#Dentro de la tabla orderdetails, obten el total de cada orden.
describe orderdetails;
SELECT * FROM orderdetails;
SELECT orderNumber, SUM(quantityOrdered * priceEach) AS totalAmount FROM orderdetails GROUP BY orderNumber;

#Dentro de la tabla orders obten el número de órdenes por año.
SELECT * FROM orders;
describe orders;
select * from orders where year(orderDate) like 2003;
select * from orders where month(orderDate) like "2";
SELECT YEAR(orderDate) as the_year FROM orders GROUP BY the_year;


#Obten el apellido y nombre de los empleados cuya oficina está ubicada en USA.
describe employees;
SELECT lastName, firstName FROM employees WHERE officeCode IN (SELECT officeCode FROM offices WHERE country LIKE "USA");
SELECT lastName, firstName FROM employees INNER JOIN offices USING(officeCode) WHERE offices.country LIKE "USA";

#Obten el número de cliente, número de cheque y cantidad del cliente que ha realizado el pago más alto.
SELECT customerNumber, checkNumber, amount FROM payments WHERE amount = (SELECT MAX(amount) FROM payments);


#Obten el número de cliente, número de cheque y cantidad de aquellos clientes cuyo pago es más alto que el promedio.
SELECT customerNumber, checkNumber, amount FROM payments WHERE amount > (SELECT AVG(amount) FROM payments);

#Obten el nombre de aquellos clientes que no han hecho ninguna orden.
SELECT customerName FROM customers WHERE customerNumber NOT IN (SELECT customerNumber FROM orders); 

#Obten el máximo, mínimo y promedio del número de productos en las órdenes de venta.
SELECT * FROM orderdetails;
SELECT productCode, MIN(quantityOrdered), MAX(quantityOrdered), AVG(quantityOrdered), sum(quantityOrdered)/count(*) FROM orderdetails GROUP BY productCode ORDER BY productCode;

#Dentro de la tabla orders, obten el número de órdenes que hay por cada estado.
SELECT status,COUNT(*) FROM orders GROUP BY status;


