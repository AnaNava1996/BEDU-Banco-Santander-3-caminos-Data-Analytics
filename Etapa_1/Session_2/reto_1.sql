#¿Qué artículos incluyen la palabra Pasta en su nombre?
#select * from articulo;
SELECT * FROM articulo WHERE nombre LIKE "%Pasta%";
#¿Qué artículos incluyen la palabra Cannelloni en su nombre?
SELECT * FROM articulo WHERE nombre LIKE "%Cannelloni%";
#¿Qué nombres están separados por un guión (-) por ejemplo Puree - Kiwi?
SELECT * FROM articulo WHERE nombre LIKE "% - %";
#¿Qué puestos incluyen la palabra Designer?
#select * from puesto;
SELECT * FROM puesto WHERE nombre LIKE "%designer%";
#¿Qué puestos incluyen la palabra Developer?
SELECT * FROM puesto WHERE nombre LIKE "%developer%";