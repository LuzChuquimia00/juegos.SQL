--ACT1 Mostrar la cantidad de estaciones totales.
SELECT count(DISTINCT NOMBRE_ESTACION)AS cantidadDeEstacionesT FROM barcelona_viajeros_por_franja_xlsx; 
--ACT2 Mostrar un listado de estaciones único.
SELECT DISTINCT NOMBRE_ESTACION AS cantidadDeEstacionesT FROM barcelona_viajeros_por_franja_xlsx;
--ACT3 Al listado obtenido adicionar una columna 
--con el total de pasajeros subidos 
--y otra con el total de pasajeros que bajaron.
SELECT count(DISTINCT NOMBRE_ESTACION) AS cantidadDeEstacionesT, sum(VIAJEROS_SUBIDOS) as TPasajerosSubidos, sum(VIAJEROS_BAJADOS) as TPasajerosQBajaron FROM barcelona_viajeros_por_franja_xlsx 
--ACT4 A la consulta anterior adicionar una 
--columna que muestre la diferencia entre los 
--pasajeros que subieron y bajaron.
SELECT count(DISTINCT NOMBRE_ESTACION) AS cantidadDeEstacionesT, sum(VIAJEROS_SUBIDOS) as TPasajerosSubidos, sum(VIAJEROS_BAJADOS) as TPasajerosQBajaron, sum(VIAJEROS_SUBIDOS)-sum(VIAJEROS_BAJADOS) AS DIFERENCIA FROM barcelona_viajeros_por_franja_xlsx 
--ACT5 Mostrar cuál fue la estación
--que más pasajeros subieron por tramo horario
