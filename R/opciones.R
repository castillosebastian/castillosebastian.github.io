# compro SUPVC61.0AG a $8 cotización de hoy SUPV 67,35
# egreso_compra = 8 * 100
# egreso_ejercicio = 61*100
# egreso_compra + egreso_ejercicio
#valor intrínseco Precio Accion - Precio Ejercicio (strike)
# valor_intrinseco = 67.35 - 61
# Porqué la prima está mas cara que el valor intrínseco?
# YPFC760.OC 
# requisitos comprar 20 acciones mas.
# Lanzamos coll YPFC760.OC: 1 * 29
# Supuesto asumido: acción no supera 760 en el tercer viernes de octubre.

# Informe 
library(dplyr)
library(knitr)
library(stringr)
library(janitor)
library(kableExtra)
library(tidyr)
library(tibble)
library(ggplot2)
library(lubridate)

