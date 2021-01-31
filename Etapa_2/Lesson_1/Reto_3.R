# 1. Genera un vector de 44 entradas (aleatorias) llamado ran
ran <- runif(n = 44)
ran
# 2. Escribe un loop que eleve al cubo las primeras 15 entradas y les sume 12

res <- vector()

for (i in 1:15) {
  res[i] <- (ran[i]^3) + 12
}

# 3. Guarda el resultado en un data frame, donde la primera columna sea el número aleatorio y la segunda el resultado, nómbralo df.al

df.al <- data.frame(ran[1:15],res)
df.al

write.csv(df.al,"res.csv")

# 4. Escribe el pseudocódigo del loop anterior

#   PSEUDOCÓDIGO:
#
#   ran = asigno un vector de 44 randoms
#   res = asigno un vector
#
#   begin for loop  i de 1 a 15:
#       res[i] = ran*ran*ran + 12
#   end del for loop
# 
#   create dataframe df.al = ran y res
#   write df.al in "res.csv" file


