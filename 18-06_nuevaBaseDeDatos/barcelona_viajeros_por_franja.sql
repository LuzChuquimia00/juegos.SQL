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
SELECT NOMBRE_ESTACION, VIAJEROS_SUBIDOS AS PASAJEROS_SUBIDOS_TOTAL, TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
ORDER BY PASAJEROS_SUBIDOS_TOTAL DESC
LIMIT 1;
--ACT6 Mostrar cuál fue la estación que más 
--pasajeros subieron en el dia
SELECT NOMBRE_ESTACION, VIAJEROS_SUBIDOS AS PASAJEROS_SUBIDOS_TOTAL, TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
ORDER BY TRAMO_HORARIO ASC
LIMIT 1 OFFSET '717';
--ACT7 Mostrar cuál fue la estación que más 
--pasajeros bajaron por tramo horario
SELECT NOMBRE_ESTACION, VIAJEROS_BAJADOS AS PASAJEROS_BAJADOS_TOTAL, TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
ORDER BY PASAJEROS_BAJADOS_TOTAL DESC
LIMIT 1;
--ACT8 Mostrar cuál fue la estación que más 
--pasajeros bajaron en el dia
SELECT NOMBRE_ESTACION, VIAJEROS_BAJADOS AS PASAJEROS_BAJADOS_TOTAL, TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
ORDER BY TRAMO_HORARIO ASC
LIMIT 1 OFFSET '717';
--ACT9 Mostrar cuál fue la estación que  tuvo la mayor 
--diferencia entre pasajeros que subieron y
--bajaron por tramo horario en el dia
SELECT NOMBRE_ESTACION,VIAJEROS_SUBIDOS, VIAJEROS_BAJADOS, TRAMO_HORARIO,VIAJEROS_SUBIDOS-VIAJEROS_BAJADOS AS DIFERENCIA FROM barcelona_viajeros_por_franja_xlsx
ORDER BY DIFERENCIA DESC;  
--ACT10 Mostrar cuál fue la estación que tuvo la mayor
--diferencia entre pasajeros que subieron y bajaron.
SELECT NOMBRE_ESTACION,VIAJEROS_SUBIDOS, VIAJEROS_BAJADOS,VIAJEROS_SUBIDOS-VIAJEROS_BAJADOS AS DIFERENCIA FROM barcelona_viajeros_por_franja_xlsx
ORDER BY DIFERENCIA DESC;  
--ACT11 Cuál fue el promedio de pasajeros que viajaron por tramo?
SELECT TRAMO_HORARIO,AVG(VIAJEROS_SUBIDOS) AS PROMEDIO_SUBIDOS,AVG(VIAJEROS_BAJADOS) AS PROMEDIO_BAJADOS FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO;
--ACT12 Qué estaciones estuvieron sobre ese promedio.
SELECT NOMBRE_ESTACION,TRAMO_HORARIO,AVG(VIAJEROS_SUBIDOS) AS PROMEDIO_SUBIDOS,AVG(VIAJEROS_BAJADOS) AS PROMEDIO_BAJADOS FROM barcelona_viajeros_por_franja_xlsx
GROUP BY TRAMO_HORARIO;
