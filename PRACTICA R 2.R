# P R A C T I C A  (ɔ◔‿◔)ɔ ♥
# ☼ INSTALACION DE PAQUETES ☼
install.packages("tidyverse")
if (!require("pacman")) install.packages("pacman")
library(tidyverse)
library(readxl)
library(dplyr)
pacman::p_load(tidyverse, 
               readxl,writexl,googlesheets4, 
               haven, foreign, 
               sjlabelled, GGally, RColorBrewer, 
               janitor, skimr, 
               DescTools, 
               infer,  
               broom,  
               estimatr, car, stargazer, ggpubr) 
#El código de pacman fue tomado de Ana Escoto en Github 

# ☼ IMPORTAR BASE DE DATOS ☼ 
library(readxl)
suicidios_2018 <- read_excel("~/suicidios_2018.xlsx", 
  col_types = c("numeric", "text", "text", 
  "numeric", "numeric", "numeric"))
clean_names(suicidios_2018)

# ☼ LECTURA DE DATOS ☼ 
names(suicidios_2018)
suicidios_2018$suicidios_total
head(suicidios_2018)
suicidios_2018$suicidios_total


summary(suicidios_2018$suicidios_total)
summary(suicidios_2018$suicidios_H)
summary(suicidios_2018$suicidios_M)

# ☼ MEDIDAS DE TENDENCIA CENTRAL☼ 
#RANGO
range(x=suicidios_2018$suicidios_total, na.rm = TRUE)

#MEDIA DE SUICIDIOS EN MUJERES A NIVEL NACIONAL PARA 2018
mean(x=suicidios_2018$suicidios_M, na.rm = TRUE )
#MEDIA DE SUICIDIOS EN HOMBRES A NIVEL NACIONAL PARA 2018
mean(x=suicidios_2018$suicidios_H, na.rm = TRUE)
#MEDIA DE SUICIDIOS TOTALES A NIVEL NACIONAL PARA 2018
mean(x=suicidios_2018$suicidios_total, na.rm=TRUE)

#MODA
table(suicidios_2018$suicidios_total)

#MEDIANA PARA SUICIDIOS TOTALES A NIVEL NACIONAL
median(x=suicidios_2018$suicidios_total, na.rm = TRUE)

#DESVIACIÓN ESTANDAR
sd(x=suicidios_2018$suicidios_total, na.rm = TRUE)
sd(x=suicidios_2018$suicidios_H, na.rm = TRUE)
sd(x=suicidios_2018$suicidios_M, na.rm = TRUE)

#COEFICIENTE DE VARIABILIDAD 
"coeficiente de variabilidad s_h" <- function(x=suicidios_2018, na.rm= TRUE){
  sd(x= suicidios_2018$suicidios_H, na.rm=na.rm) / mean(x=suicidios_2018$suicidios_H, na.rm=na.rm)
}
`coeficiente de variabilidad s_h`()



