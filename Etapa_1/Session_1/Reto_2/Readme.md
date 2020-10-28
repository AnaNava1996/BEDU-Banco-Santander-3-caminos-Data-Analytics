## Reto 2:


<div style="text-align: justify;">


### - ¿Cuál es el nombre de los empleados con el puesto 4?
```sql
SELECT nombre, apellido_paterno, apellido_materno FROM empleado WHERE id_puesto=4;
```
![imagen](images_reto_2/reto_2_1.png)

### - ¿Qué puestos tienen un salario mayor a $10,000?
```sql
SELECT * FROM puesto WHERE salario>10000;
```
![imagen](images_reto_2/reto_2_2.png)

### - ¿Qué articulos tienen un precio mayor a $1,000 y un iva mayor a 100?
```sql
SELECT * FROM articulo WHERE precio>1000 AND iva>100;
```
![imagen](images_reto_2/reto_2_3.png)

### - ¿Qué ventas incluyen los artículo 135 o 963 y fueron hechas por los empleados 835 o 369?
```sql
SELECT * FROM venta where id_articulo IN (135,963) AND id_empleado IN (835,369);
```
![imagen](images_reto_2/reto_2_4.png)

</div>


