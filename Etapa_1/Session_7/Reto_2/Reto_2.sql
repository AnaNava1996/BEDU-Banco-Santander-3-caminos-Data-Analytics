#	sudo root....
#	SET GLOBAL local_infile=1;
#	sudo mysql --local-infile=1 -u root -p1
#	use bedu_test

#Usando como base el archivo movies.dat, limpiarlo e importar los datos en la tabla movies creada en el Reto 1.
LOAD DATA LOCAL INFILE '/home/ana/Desktop/BEDU/BEDU-Banco-Santander-3-caminos-Data-Analytics/Etapa_1/Session_7/ml-1m/movies.csv'
INTO TABLE bedu_test.movies CHARACTER SET latin2 FIELDS TERMINATED BY '|'
ENCLOSED BY '"' LINES TERMINATED BY '\n';

#Usando como base el archivo ratings.dat, limpiarlo e importar los datos en la tabla ratings creada en el Reto 2.
LOAD DATA LOCAL INFILE '/home/ana/Desktop/BEDU/BEDU-Banco-Santander-3-caminos-Data-Analytics/Etapa_1/Session_7/ml-1m/ratings.csv'
INTO TABLE bedu_test.ratings CHARACTER SET utf8 FIELDS TERMINATED BY ','
ENCLOSED BY '"' LINES TERMINATED BY '\n';