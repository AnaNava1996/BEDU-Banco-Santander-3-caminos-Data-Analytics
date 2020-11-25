CREATE TABLE IF NOT EXISTS users(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    genero VARCHAR(1),
    edad INT,
    ocup INT,
    cp VARCHAR(20)
);

#Definir los campos y tipos de datos para la tabla movies haciendo uso de los archivos movies.dat y README.
#Crear la tabla movies (recuerda usar el mismo nombre del archivo sin la extensión para vincular nombres de tablas con archivos).
CREATE TABLE IF NOT EXISTS movies(
	movieid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title VARCHAR(150),  # hay títulos extremadamente largos en hollywood
    genres VARCHAR(100)
);

#Definir los campos y tipos de datos para la tabla ratings haciendo uso de los archivos ratings.dat y README.
#Crear la tabla ratings (recuerda usar el mismo nombre del archivo sin la extensión para vincular nombres de tablas con archivos)
CREATE TABLE IF NOT EXISTS ratings(
	userid INT,
    movieid INT,
	ratings TINYINT,
    time_stamp BIGINT,
    FOREIGN KEY (userid) REFERENCES users(id),
    FOREIGN KEY (movieid) REFERENCES movies(movieid)
);

