suppressWarnings(suppressMessages(library(dplyr)))

#  Descargue los archivos csv que corresponden a las temporadas 2017/2018, 2018/2019, 2019/2020 y 2020/2021 de la 
#  Bundesliga 1 y que se encuentran en el siguiente enlace https://www.football-data.co.uk/germanym.php
#  Importe los archivos descargados a R

bundes_17_18 <- read.csv("/home/ana/Desktop/BEDU/BEDU-Banco-Santander-3-caminos-Data-Analytics/Etapa_2/2017_2018.csv")
bundes_18_19 <- read.csv("/home/ana/Desktop/BEDU/BEDU-Banco-Santander-3-caminos-Data-Analytics/Etapa_2/2018_2019.csv")
bundes_19_20 <- read.csv("/home/ana/Desktop/BEDU/BEDU-Banco-Santander-3-caminos-Data-Analytics/Etapa_2/2019_2020.csv")
bundes_20_21 <- read.csv("/home/ana/Desktop/BEDU/BEDU-Banco-Santander-3-caminos-Data-Analytics/Etapa_2/2020_2021.csv")


#  Usando la función select del paquete dplyr, seleccione únicamente las columnas:
#  Date
#  HomeTeam
#  AwayTeam
#  FTHG
#  FTAG
#  FTR

str(bundes_17_18)
str(bundes_18_19)
str(bundes_19_20)
str(bundes_20_21)

t_17 <- select(bundes_17_18, Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR)
t_18 <- select(bundes_18_19, Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR)
t_19 <- select(bundes_19_20, Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR)
t_20 <- select(bundes_20_21, Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR)

#  Combine cada uno de los data frames en un único data frame con ayuda de las funciones:
#  rbind
#  do.call

rbind( rbind(t_17 , t_18), rbind( t_19, t_20) )

#str(bundes_17_18)
#str(bundes_18_19)
#str(bundes_19_20)
#str(bundes_20_21)

