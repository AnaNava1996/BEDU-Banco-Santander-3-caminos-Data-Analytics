
data_set <- read.csv("/home/ana/Desktop/BEDU/BEDU-Banco-Santander-3-caminos-Data-Analytics/Etapa_2/Lesson_3/Reto-02/players_stats.csv", sep=",")
head(data_set);
#Generar un histograma de los minuntos totales (MIN), de los jugadores y agregar una línea donde se muestre la media

hist(data_set$MIN, 
     breaks = 20,
     main = " Histograma de min totales",
     ylab = "Frecuencia",
     xlab = "Minutos Totales", 
     col = "lightblue" )


#Generar un histograma de edad (Age) y agregar una línea con la media
hist(data_set$Age, 
     breaks = 20,
     main = " Histograma de Age",
     ylab = "Frecuencia",
     xlab = "Age", 
     col = "lightblue" )

#Hacer un scatterplot de las variables Weight y Height y observar la correlacón que existe entre ambas variables (1 sola gráfica)
(my_scatplot <- ggplot(data_set, 
                       aes(x=Weight,y=Height)) + 
    geom_point() + 
    geom_smooth(method = "lm", se = T))  


#Utiliza la función which.max para saber quién es el jugador más alto, una vez hecho esto, presenta los resultados en una leyenda que diga "El jugador más alto es: Name, con una altura de: Height". Las unidades de altura deben ser en metros.
which.max(data_set$Height)

#Utiliza la función which.min para saber quién es el jugador más bajito, una vez hecho esto, presenta los resultados en una leyenda que diga "El jugador más bajito es: Name, con una altura de: Height". Las unidades de altura deben ser en metros.
which.min(data_set$Height)


#¿Cuál es la altura promedio?, representa el resultado en una frase que diga: "La altura promedio es: ALTURA"

#Generar un scatterplot donde se representen las Asistencias totales (AST.TOV) vs Puntos (PTS), además has un face wrap con la posición (Pos).