install.packages("DescTools")
install.packages("RDCOMClient", repos="http://www.omegahat.net/R")
library(DescTools)


set.seed(134)
x <- round(rnorm(1000, 175, 6), 1) #media 175 y deviacion estandar 6

(x)

#Calcule, la media, mediana y moda de los valores en x

(mean(x))

(median(x))

(Mode(x))


#Obtenga los deciles de los números en x

quantile(x, c(0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90)) # Deciles
quantile(x, seq(0.1,0.9, by = 0.1)) #Deciles

#Encuentre la rango intercuartílico, la desviación estándar y varianza muestral de las mediciones en x

IQR(x)
var(x)
sd(x)


