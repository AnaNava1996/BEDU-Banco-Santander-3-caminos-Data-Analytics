datos_lineales <- read.csv("/home/ana/Desktop/BEDU/BEDU-Banco-Santander-3-caminos-Data-Analytics/Etapa_2/Lesson_5/Reto-01/datoslineal.csv")
attach(datos_lineales)

head(datos_lineales)

#grafico de dispersion
plot(x, y, xlab = "x", 
     ylab = "y", pch = 16)

#modelo ajustado
m1 <- lm(y~x)
summary(m1)

plot(x, y, xlab = "x", 
     ylab = "y", pch = 16)
abline(lsfit(x, y))


par(mfrow = c(2, 2))
plot(m1)

