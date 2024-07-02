--3.Imagine que en la tabla de empleados por error se cargaron 
--los números de teléfono en la columna de número de fax y a la inversar  
--Escriba una consulta de modificación que corrija este error.
UPDATE employees SET phone =  fax;
--4.Borrar todos los géneros que tengan menos de 50 canciones
--(borrar todo lo necesario para poder borrar estos géneros)
UPDATE tracks SET GenreId = NULL
WHERE GenreId IN (
    SELECT g.GenreId
    FROM genres g
    JOIN tracks t ON g.GenreId = t.GenreId
    GROUP BY g.GenreId
    HAVING COUNT(t.TrackId) < 50
);
DELETE FROM genres
WHERE GenreId IN (
    SELECT g.GenreId
    FROM genres g
    LEFT JOIN tracks t ON g.GenreId = t.GenreId
    GROUP BY g.GenreId
    HAVING COUNT(t.TrackId) < 50
);
--para borrar los generos que tengan menos de 50 canciones, 
--lo primero que hice fue modificar los generos menores a 50 canciones a NULL para poder borrar.

--5.En la tabla de empleados, el jefe principal tiene NULL en el campo 
--de reportsTo.  Modificar la tabla para que tenga su propio id de empleado
-- en ese campo.
UPDATE employees
SET ReportsTo = 1
WHERE ReportsTo is null; 
--6.Borrar todos los clientes que no tengan facturas (invoices).
