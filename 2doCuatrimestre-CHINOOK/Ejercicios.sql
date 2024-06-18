--3.Imagine que en la tabla de empleados por error se cargaron 
--los números de teléfono en la columna de número de fax y a la inversar  
--Escriba una consulta de modificación que corrija este error.
UPDATE employees SET phone =  fax;
--4.Borrar todos los géneros que tengan menos de 50 canciones
--(borrar todo lo necesario para poder borrar estos géneros)
DELETE FROM tracks WHERE (SELECT g.name AS GenerosDelasCaciones, count(t.TrackId) AS Canciones 
							FROM genres g
							JOIN tracks t ON g.GenreId = t.GenreId
							GROUP BY g.GenreId
							HAVING  count(t.TrackId) < 50);