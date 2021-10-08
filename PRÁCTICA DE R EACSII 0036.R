# P R A C T I C A  I N T R O D U C T O R I A (ɔ◔‿◔)ɔ ♥
# ✿ OPERACIONES MATEMATICAS ✿
2+2
3*4
sqrt(12)

# ✿ DECLARACION DE OBJETOS ✿
dolar=20.62
won=0.017
won/dolar
dolar*50
won*1000

# ✿ MUESTRAS ALEATORIAS ✿
n=100
sample(c(1,2,3,4,5,6),1)
"lanzar dado" <- sample(c(1,2,3,4,5,6),n,replace = TRUE, prob = )
`lanzar dado`

# ✿ PROBABILIDADES ✿
table(`lanzar dado`)
table(`lanzar dado`)/n
"tabla de probabilidad" <- table(`lanzar dado`)/n
barplot(`tabla de probabilidad`)
barplot(`tabla de probabilidad`, border="#69b3a2", col="pink")
library(RColorBrewer)
paleta <- brewer.pal(5, "Set2")
barplot(`tabla de probabilidad`, border="#69b3a2", col= paleta)
barplot(`tabla de probabilidad`, density=c(5,10,20,30,7) , angle=c(0,45,90,11,36), border="#69b3a2", col= paleta)
