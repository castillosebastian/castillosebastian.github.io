# Trabajar con cauciones 
interes_caucion <- function(monto, interes_anual, dias) {
  interes_periodo <- ( interes_anual / 365 ) * dias
  interes_devengado <- (monto * interes_periodo) / 100
  round(interes_devengado, digits = 2)
}

# interes_caucion(205994, 52, 7)

