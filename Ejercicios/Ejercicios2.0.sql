--ACT1--
SELECT FirstName,LastName FROM employees 
ORDER BY FirstName AND LastName DESC
--ACT2--
SELECT FirstName,ReportsTo FROM employees WHERE ReportsTo IS NULL 
--ACT3--
