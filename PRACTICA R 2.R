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

# ☼ LECTURA DE DATOS Y ESTIMACIONES ☼ 
head(suicidios_2018)
summary(suicidios_2018$suicidios_total)
summary(suicidios_2018$suicidios_H)
summary(suicidios_2018$suicidios_M)

