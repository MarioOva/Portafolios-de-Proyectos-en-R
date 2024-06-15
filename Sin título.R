#La figura 1.1 muestra reporte donde se han resaltado los valores faltantes, la calificación de servicio para la observación 2 y la calificación de limpieza para la observación 13 están marcados como TRUE porque no están presentes, El resto de los valores en la figura están etiquetados como FALSE porque están presentes

#Base de datos cargado en R para llevar a cabo la limpieza de datos
is.na(myData9$`Close TSLA`)

#Para identificar las filas en el marco de datos o los casos que están completos podemos usar la función:
#myData9[complete.cases(myData9), ]
#Cuando los datos están casi completos, es posible que no sea conveniente enlistar todos lo casos completos, para ello podemos usar el operador not (signo ¡) con la función complete.cases que servirá para identificar observaciones con valores faltantes, la función será así:
#myData9[!complete.cases(myData9), ]
#Para implementar la estrategia de omisión utilizaremos la función na.omit con el objetivo de eliminar las observaciones con valores faltantes y almacenar el conjunto de datos resultante en el marco de datos omissionData, para ello la función será así:
omissionData <- na.omit(myData9)
omissionData
