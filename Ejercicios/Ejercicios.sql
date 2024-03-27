--ACT1--
SELECT name, Composer,Milliseconds FROM tracks t
JOIN albums a ON t.AlbumId = a.AlbumId;
--ACT2--
SELECT FirstName,LastName,Address,city FROM customers;
--ACT3--
SELECT name,Milliseconds FROM tracks WHERE Composer IS NULL AND Milliseconds > 2900000;
--ACT4--
SELECT LastName,FirstName , Company FROM customers WHERE Company IS NOT NULL;
--ACT5--
SELECT DISTINCT BillingCity FROM invoices WHERE BillingState IS NOT NULL 
ORDER BY BillingCity DESC;
--ACT6--
SELECT Title FROM albums WHERE Title LIKE '%OF%'
ORDER BY Title DESC;
--ACT7--
SELECT t.name, g.name FROM genres g
JOIN tracks t ON g.GenreId = t.GenreId;
--ACT8--
SELECT name,Title FROM tracks t
JOIN albums a ON t.AlbumId = a.AlbumId
ORDER BY Title DESC;
