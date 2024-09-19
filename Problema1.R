#Código para problema 1
mis_datos <- mtcars
qseqintervalos <- cut (mis_datos$qsec, 4) #la funcion cut te hace intervalos de tabla de frecuencia y qsec extrae la columna que pides
ni <- table (qseqintervalos) #me indica las veces que sale un intérvalo
sum(ni) #número total de observaciones (suma de lo anterior)
hist(mis_datos$qsec, breaks=4)#hace un histograma y 'breaks' te hace las particiones
fi <- ni/sum(ni) #defino 'frecuencia relativa'
fi #la llamo
pie(fi) #gráfico circular de la frec. para cada resultado
cumsum(ni)#frecuencia acumulada
#hago una tabla con todo definiendo las variables
ni <- table(qsec_intervalos)
fi <- ni/sum(ni)
Ni <- cumsum(ni)
Fi <- Ni/cumsum(ni)
#a) media aritmetica de qsec
hist(mis_datos$qsec)
mean(mis_datos$qsec) #media (x)
#b) la mediana de drat (relacion del eje posterior)
sort (mis_datos$drat) #ordenados de menor a mayor
median(mis_datos$drat) #cálculo de la mediana
#c) el primer cuartil del drat (0-25%)
quantile(mis_datos$drat, 0.25)
#d) el valor en que el 18% de las observaciones 'mpg' son más pequeñas y el 82% son mayores
quantile(mis_datos$mpg, 0.18)
#e) rango intercuartílico de 'cyl' (25-75%) no lo hace con cyl pq no rents
quantile(mis_datos$mpg, 0.75) - quantile(mis_datos$mpg, 0.25)
IQR(mis_datos$mpg)
hist(mis_datos$mpg)
boxplot(mis_datos$mpg)
#f) la desviación típica (corregida) de 'cyl'
#g) la varianza (corregida) de qsec
sd(mis_datos$cyl) #f
var(mis_datos$cyl) #g
