#Simula un proceso AR(1) de la forma x[t] = 0.5 * x[t-1] + w[t] para t = 1, 2, ..., 200 y muestra gráficamente la serie de tiempo obtenida
set.seed(2)
x <- w <- rnorm(200)
for(t in 2:200) x[t] <- 0.5 * x[t-1] + w[t]
plot(x, type = "l", xlab = "", ylab = "")
title(main = "Proceso AR(1) simulado",
      xlab = "Tiempo",
      ylab = expression(x[t]),
      sub = expression(x[t]==0.5*x[t-1]+w[t]))

#Obtén el correlograma y el correlograma parcial del proceso AR(1) simulado

#Ajusta un modelo autorregresivo a la serie simulada utilizando la función ar, observa el orden del modelo y el parámetro estimado (los parámetros estimados)