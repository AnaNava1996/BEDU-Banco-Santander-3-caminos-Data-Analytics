#Carga el data set BD_Altura_Alunos.csv
data_set <- read.csv("/home/ana/Desktop/BEDU/BEDU-Banco-Santander-3-caminos-Data-Analytics/Etapa_2/Lesson_3/Reto-01/BD_Altura_Alunos.csv", sep=";")

#Realiza el histograma con la función hist(), nativa de R

head(data_set)

#realizando el histograma con la función hist()
hist(data_set$Altura, 
     breaks = 20,
     main = " Histograma de alturas",
     ylab = "Frecuencia",
     xlab = "Altura", 
     col = "lightblue")

#Ahora realiza el histograma con la función ggplot. (Recuerda que debes instalar el paquete ggplot2)

data_set %>%
  ggplot() + 
  aes(Aluno) +
  geom_histogram(binwidth = 20, col="black", fill = "lightpink") + 
  ggtitle("Altura de Alumnos") +
  ylab("Frecuencia") +
  xlab("Altura") + 
  theme_light()
