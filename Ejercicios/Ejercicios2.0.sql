--ACT1--
SELECT FirstName,LastName FROM employees 
ORDER BY FirstName AND LastName DESC;
--ACT2--
SELECT FirstName,ReportsTo FROM employees WHERE ReportsTo IS NULL;
--ACT3--
SELECT billingaddress, total FROM invoices
ORDER BY total DESC
LIMIT 5;
--ACT4--
SELECT t.name,t.AlbumId, t.Milliseconds FROM tracks t
WHERE t.AlbumId LIKE '5'; 

