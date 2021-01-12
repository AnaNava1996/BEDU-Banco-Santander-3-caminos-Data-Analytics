#1. Leer el archivo "netflix_titles.csv" desde Github
#(https://raw.githubusercontent.com/ecoronadoj/Sesion_1/main/Data/netflix_titles.csv), almacenarlo en un df llamado netflix

netflix <- read.csv("https://raw.githubusercontent.com/ecoronadoj/Sesion_1/main/Data/netflix_titles.csv")

#2. Obtener la dimensión y el tipo de objeto que se obtiene

dim(netflix)
class(netflix)

#3. Obtener los títulos que se estrenaron después del 2015. Almacenar este df en una variable llamada net.2015

netflix.2015 <- netflix[netflix$release_year>2015,]
netflix.2015

#4. Escribir los resultados en un archivo .csv llamado res.netflix.csv
write.csv(netflix.2015,"res.netflix.csv")

# sirve para escribir en el escritorio de trabajo 
#  ?write