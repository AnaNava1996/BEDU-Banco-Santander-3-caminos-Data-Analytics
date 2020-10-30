#¿Cuál es el promedio de salario de los puestos?
Select avg(salario) from puesto;

#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
select count(*) from articulo where nombre like "%pasta%";

#¿Cuál es el salario mínimo y máximo?
select max(salario) from puesto;
select min(salario) from puesto;

#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
#select * from puesto order by id_puesto desc limit 5;
select sum(puesto.salario) as total from (select * from puesto order by id_puesto desc limit 5) as puesto;
