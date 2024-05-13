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

