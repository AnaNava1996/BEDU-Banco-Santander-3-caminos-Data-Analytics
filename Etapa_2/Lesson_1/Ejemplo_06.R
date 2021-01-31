# EJEMPLO 6. Loops y pseudoc?digo: for, while, if, else, if-else

# Objetivo
# Conocer la inicializaci?n de variables
# Ejecutar un loop, for, while, if y if-else
  
# Requisitos
# R, RStudio
# Prework

# Desarrollo
# Durante este ejemplo se dar?n las bases para inicializar una variable que sea 
# utilizada dentro de un loop, adicionalmente se utilizaran los comandos while, 
# if y if-else para poder utilizarlos adecuadamente

# Este ejemplo elevar? al cuadrado las primeras 10 entradas de un vector 
# generado aleatoriamente de 20 entradas

w <- rnorm(20)              
print("Este loop calcula el cuadrado de los 10 primeros elementos del vector w")

# inicializando la varialbe wsq

wsq <- 0

typeof(wsq)
class(wsq)

for(i in 1:10) {
  wsq[i] <- w[i]**2
  print(wsq[i])
}
wsq[4]
typeof(wsq)
class(wsq)
elvecto <- c(1,2,3,4)
typeof(elvecto)
class(elvecto)
print(wsq)
print(elvecto)
# Los bucles WHILE comienzan comprobando una condici?n. Si esta es verdadera, 
# entonces se entra al cuerpo del bucle. Una vez completada una ejecuci?n de 
# este bloque, se comprueba la condici?n nuevamente y as? sucesivamente hasta 
# que la comprobaci?n de la condici?n de falso.

# while(<condicion>) {
#                     c?digo
#                     ...
#             }

# Ejemplo:
  
count <- 0
while(count < 10) {
  print(count)
  count <- count + 1
}
  
# Pseudoc?digo para IF - ELSE

# if(<condicion>) {
  ## bloque de c?digo
# }

## Continua con el resto del c?digo

# if(<condicion>){
                  ## bloque de c?digo
#               } else {
                        ## otro bloque de c?digo
#                      }

# if(<condition1>) {
                     ## bloque de c?digo
#                 } else if(<condicion2>) {
                                           ## otro bloque de c?digo
#                                        } else {
                                                 ## otro bloque de c?digo
#                                               }

# Ejemplo

x <- runif(1, 0, 10) ## creamos un n?mero aleatorio entre 0 y 10
if(x > 5) {
  y <- TRUE
} else {
  y <- FALSE
}
x; y
# De este modo estamos asignando un valor a una variable en funci?n del valor 
# de otra. Lo que se debe tener en cuenta es que la condici?n debe retornar un 
# valor TRUE o FALSE.
