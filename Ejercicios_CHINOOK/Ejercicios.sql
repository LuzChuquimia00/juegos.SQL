--ACT1 Mostrar nombres de las canciones, compositores y milisegundos.--
SELECT name, Composer,Milliseconds FROM tracks t
JOIN albums a ON t.AlbumId = a.AlbumId;
--ACT2 Nombre, apellido, dirección y ciudad de la tabla cliente.--
SELECT FirstName,LastName,Address,city FROM customers;
--ACT3 Nombre y milisegundos donde el compositor es vacío y los milisegundos mayores a 2900000.--
SELECT name,Milliseconds FROM tracks WHERE Composer IS NULL AND Milliseconds > 2900000;
--ACT4 Apellido, nombre y compañía, donde la misma no esté vacía.--
SELECT LastName,FirstName , Company FROM customers WHERE Company IS NOT NULL;
--ACT5 Mostrar una Ciudad de facturación (BillingCity) sin que se repita la misma, donde el estado de cuenta (BillingState) no es vacío, ordenar la ciudad de facturación de forma descendente.--
SELECT DISTINCT BillingCity FROM invoices WHERE BillingState IS NOT NULL 
ORDER BY BillingCity DESC;
--ACT6 Mostrar el título del álbum que contenga la palabra OF, ordenarlo de manera ascendente.--
SELECT Title FROM albums WHERE Title LIKE '%OF%'
ORDER BY Title DESC;
--ACT7 Mostrar nombre y género de las canciones.--
SELECT t.name, g.name FROM genres g
JOIN tracks t ON g.GenreId = t.GenreId;
--ACT8 Mostrar nombre y título de las canciones, ordenar el título de forma descendente.--
SELECT name,Title FROM tracks t
JOIN albums a ON t.AlbumId = a.AlbumId
ORDER BY Title DESC;
