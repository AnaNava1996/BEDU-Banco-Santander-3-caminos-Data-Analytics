CREATE DATABASE IF NOT EXISTS bedu_test;
#DROP DATABASE IF EXISTS bedu_test;

USE bedu_test;

CREATE TABLE IF NOT EXISTS users(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    genero VARCHAR(1),
    edad INT,
    ocup INT,
    cp VARCHAR(20)
);


DROP TABLE movies;
DROP TABLE ratings;
DROP TABLE IF EXISTS users;

select * from movies;