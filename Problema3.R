#Codigo para problema 3
x <- (1:30)/30
x
#a) suma de todos los datos
sum(x)
#b) crea un vector Y a partir de X eliminando los datos de: 21, 2, 26
y <- x[-c(21,2,26)]
y
#me pide calcular con exponencial la resta de xi y yi
sum(exp(x))- sum (exp(y))
#c) en el vector Y, el dato de la posicion 19, es mayor o igual q el de la 24?
y[19]
y[24]
#falso
