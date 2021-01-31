#Realizar la lectura de los datos y seguir las instruccines que se muestran a continuación.

#Utiliza el data frame de ventas de libros por Amazon y realiza las siguientes actividades:
  
#  Almacenalo en un data frame que se llame amazon.best

amazon.best <- read.csv("./Data/bestsellers with categories.csv")
tail(amazon.best)

#Calcula el data frame transpuesto, asígnale el nombre de tAmazon y conviértelo en un data frame (Hint: consulta la ayuda sobre las funciones t y as.data.frame)
tAmazon <- as.data.frame(t(amazon.best))
head(tAmazon)
#Usa el nombre de los libros como el nombre de las columnas (Hint: consulta la documentación de names, tienes que hacer algo similar a names(dataframe) <- vector de nuevos nombres)
colnames(tAmazon) <- tAmazon[1,]

row.names(tAmazon)
head(tAmazon)

tail(tAmazon)
#¿Cúal es el libro de menor y mayor precio?
which.max(tAmazon["Price",])
which.min(tAmazon["Price",])


which.max(amazon.best$Price)
