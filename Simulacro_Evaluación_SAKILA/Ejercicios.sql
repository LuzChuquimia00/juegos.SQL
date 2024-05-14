--ACT1 Mostrar los nombres de todas las películas en orden alfabético--
SELECT title FROM film
ORDER BY title DESC;
--ACT2 Mostrar los nombre de todos los ratings de película posibles, en orden alfabético (cuidando de no poner repetidos)--
SELECT DISTINCT rating AS Rango_De_Edad FROM film
ORDER BY rating DESC; 
--ACT3 Mostrar los nombres y precio de alquiler de todas las películas con rating "PG-13" o "PG", ordenando primero por precio (de mayor a menor) y luego por orden alfabético del nombre de la película.--
SELECT title AS Nombre_De_La_Pelicula, rating AS Rango_De_Edad, rental_rate AS Precio_De_Alquiler FROM film
ORDER BY Precio_De_Alquiler DESC, Nombre_De_La_Pelicula;
--ACT4 Mostrar los nombres de todas las ciudades con su país correspondiente.--
    -- Pensar como ordenar para que las ciudades de un mismo país queden juntas--
SELECT c.city AS Cuidad, co.country AS Pais FROM city c
JOIN country co ON co.country_id = c.country_id
ORDER BY co.country_id DESC;
--ACT5 Mostrar la lista de todos los países, con la cantidad de ciudades de cada uno, ordenando de manera que los países con más ciudades queden primero.--
SELECT count(c.city) AS Ciudades, co.country AS Pais FROM city c
JOIN country co ON co.country_id = c.country_id
GROUP BY country ORDER BY Ciudades DESC;
--ACT6 Mostrar la lista de todos los países que tienen más de dos ciudades.--
SELECT c.city AS Ciudades, co.country AS Paises FROM city c
JOIN country co ON co.country_id = c.country_id
GROUP BY country 
HAVING Ciudades > 2
ORDER BY Ciudades DESC;
--ACT7 Mostrar la fecha más vieja y la más actual de los alquileres-- 
--que fueron devueltos (PISTA: las fechas se pueden comparar, la más vieja sería la menor y la más actual la mayor)--
SELECT MIN(return_date) AS FechaAntigua,MAX(return_date) AS FechaActual FROM rental;
--ACT8 Mostrar los nombres de las diez películas con menos actores--
SELECT f.title AS NombreDeLasPelis, count(fa.actor_id) AS Actores FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
GROUP BY f.film_id
ORDER BY Actores DESC
LIMIT 10; 
--ACT 9 Mostrar cuál es la tercer película más alquilada.--
SELECT DISTINCT title AS NombreDeLasPelis,rental_duration AS terceraMasAlquilada FROM film
ORDER BY terceraMasAlquilada DESC
LIMIT 1 OFFSET 2;
--ACT 10  Mostrar la cantidad promedio y cantidad máxima de actores de las películas que tienen entre un hora y media y dos horas.--
SELECT f.title AS nombreDeLasPelis,f.length AS Horas ,avg(fil.actor_id) AS promedioDeActor, max(fil.actor_id) as maximaCantidadDeActores
FROM film f
JOIN film_actor fil ON f.film_id = fil.film_id
WHERE f.length BETWEEN 90 AND 120 --BETWEEN(ENTRE TAL COSA...)--
GROUP BY f.film_id
ORDER BY f.length;
