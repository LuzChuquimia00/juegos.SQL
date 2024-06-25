--1.Se necesita saber cuántos empleados hay en cada departamento 
--y cuanto gasta en salarios cada uno, para esto nos solicita que 
--creemos un listado de tres columnas donde indiquemos el nombre del departamento, 
--la cantidad de empleados y el gasto total en sueldos de empleados por departamento.
SELECT d.department_name AS NombreDeDepartamento, count(employee_id) AS cantidadEmpleados, sum(e.salary) AS SalaryGastadoTotal FROM departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY cantidadEmpleados DESC;
--2.Nos solicita un listado que contenga nombre, apellido, departamento 
--y pais de todos los empleados que trabajan en Estados Unidos. 
SELECT e.first_name, e.last_name, d.department_name , c.country_name, j.job_title FROM employees e
JOIN jobs j on j.job_id = e.job_id
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
WHERE c.country_name LIKE 'United States of America';
--3.El encargado del departamento de ventas nos informó 
--que detecto que hay algunos empleados que no poseen un número de teléfono cargado, 
--nos solicitó que le pasemos la lista de aquellos empleados que no tienen cargado un número
-- de teléfono, esta lista debe estar confeccionada por id de empleado, nombre, apellido, 
--correo electrónico, número de teléfono y id de departamento. 
--Y que por favor le carguemos momentáneamente el numero de la empresa (111.222.3344)
-- para evitar tener valores null en esos campos.
SELECT employee_id as idEmpleados,first_name,last_name,email,phone_number,department_id 
FROM employees WHERE phone_number IS NULL;
UPDATE employees SET phone_number = '111.222.3344' WHERE phone_number IS NULL;
--4.Debido a una politica de mejora de sueldos nos solicitan que incrementemos un 20% 
--el salario de todos los empleados que cobren 8000 o
--- menos que trabajen de programadores o empleados de compra (Purchasing Clerk).
UPDATE employees SET salary = salary*1.2 WHERE salary < 8000;
--5.

--6.Nos informa que la empresa dejara de prestar operaciones en Alemania,
--por lo que nos solicitan que eliminemos todos los empleados, departamentos 
--y locaciones pertenecientes a Alemania junto con el pais.

DELETE FROM employees WHERE employee_id in (SELECT e.employee_id as empleados FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN jobs j ON e.job_id = j.job_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE c.country_id LIKE 'DE');

DELETE FROM countries WHERE country_id IN (SELECT country_id FROM countries WHERE country_id LIKE 'DE');
