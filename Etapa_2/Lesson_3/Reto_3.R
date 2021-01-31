library(forecast)
data(AirPassengers)
AP <- AirPassengers

AP

#Realiza la gráfica de la serie de tiempo
tsAP <- ts(AP, start = c(1949,01), frequency = 12)
class(tsAP)
summary(tsAP)

start(tsAP); end(tsAP); frequency(tsAP)  # Inicio, fin y frecuencia de la serie
# Graficamos la serie de tiempo

plot(tsAP, main = "Serie de tiempo", ylab = "Temp", xlab = "Año")
# Descomposición aditiva de la serie de tiempo

desAdd <- decompose(tsAP, type = "additive")
plot(desAdd$trend, main = "Tendencia", ylab = "Tendencia", xlab = "Año")

#Descompón la serie de tiempo en aditiva y multiplicativa y realiza sus gráficas

#Realiza la gráfica de la descomposición aditiva con la tendencia y la estacionalidad utilizando el comando lines

#Realiza la gráfica de la descomposición multiplicativa con la tendencia y la estacionalidad utilizando el comando lines