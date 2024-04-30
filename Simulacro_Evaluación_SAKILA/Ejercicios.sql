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
--ACT6--
JOIN country co ON co.country_id = c.country_id
GROUP BY country 
HAVING Ciudades > 2
ORDER BY Ciudades DESC;