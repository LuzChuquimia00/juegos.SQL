--ACT1 Nombre y Apellido de todos los empleados, en orden alfabético.--
SELECT FirstName,LastName FROM employees 
ORDER BY FirstName AND LastName DESC;
--ACT2 Puesto de los empleados que no tienen jefe (que no se reportan ante nadie)--
SELECT FirstName,ReportsTo FROM employees WHERE ReportsTo IS NULL;
--ACT3 Total y dirección de facturación de las 5 (cinco) facturas más altas--
SELECT billingaddress, total FROM invoices
ORDER BY total DESC
LIMIT 5;
--ACT4 Nombre y duración de todas las canciones del álbum "Big Ones" ordenados del más largo al más corto--
SELECT t.name,t.AlbumId, t.Milliseconds FROM tracks t
WHERE t.AlbumId LIKE '5'; 
--ACT5 Nombre de todos los géneros con la cantidad de canciones de cada uno--
SELECT g.Name AS nombreDelGenero ,count(t.TrackId) AS CantidadDeCanciones FROM genres g
JOIN tracks t ON g.GenreId = t.GenreId
GROUP BY g.GenreId;
--ACT6 Nombre de los discos con al menos 5 canciones--
SELECT a.Title AS NombreDiscos, count(t.TrackId) AS Canciones 
FROM albums a
JOIN tracks t ON a.AlbumId = t.AlbumId
GROUP BY a.AlbumId
HAVING  count(t.TrackId) < 5;
--ACT7 Nombre y precio total de los 10 discos más baratos--
SELECT a.Title AS NombreDiscos, UnitPrice AS Precio
FROM albums a
JOIN tracks t ON a.AlbumId = t.AlbumId
GROUP BY a.AlbumId
ORDER BY UnitPrice DESC
LIMIT 10;
--ACT8 Nombre del tema, nombre del género y nombre del disco del los temas que valen $0.99--
SELECT t.Name AS NombreTema,g.Name AS NombreGenero,a.Title AS NombreDiscos, UnitPrice AS Precio
FROM albums a 
JOIN tracks t ON a.AlbumId = t.AlbumId
JOIN genres g ON g.GenreId = t.GenreId
WHERE t.UnitPrice LIKE '0.99';
--ACT9 Nombre del tema, duración, nombre del disco y nombre del artista de los 20 temas más cortos--
SELECT t.Name AS NombreTema,t.Milliseconds AS Duracion ,al.Title AS NombreDiscos, a.Name AS NombreArtista
FROM albums al 
JOIN artists a ON al.ArtistId = a.ArtistId
JOIN tracks t ON al.AlbumId = t.AlbumId
WHERE t.Milliseconds < 10000
LIMIT 20;
--ACT10 Apellido, puesto, apellido del jefe y cantidad de clientes que atiende de todos los empleados ordenado desde los que atienden más clientes a los que atienden menos--
SELECT e.LastName AS apellidoEmpleado, e.Title AS Puestos, count(c.CustomerId) AS CantidaDeClientes 
FROM employees e LEFT JOIN customers c ON c.SupportRepId = e.EmployeeId
GROUP BY c.SupportRepId
ORDER BY c.SupportRepId ASC;