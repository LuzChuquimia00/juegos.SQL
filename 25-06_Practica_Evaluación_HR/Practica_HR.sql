--1.Listar el nombre de todos los empleados junto al nombre de departamento que pertenece, 
--el estado o provincia, su sueldo y 
--el nombre de su manager, ordenarlo por sueldo
SELECT j.first_name as nombreDelJefe,e.first_name as nombreEmpleados, d.department_name as nombreDepartamento,country_name as estado,e.salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
JOIN employees j ON e.employee_id = j.manager_id
ORDER BY e.salary DESC;
--2.reducir el salario mínimo y máximo de cada trabajo un 25%.
UPDATE jobs SET max_salary = max_salary*0.75, min_salary = min_salary*0.75;
--3.Eliminar aquellos trabajadores que cobren sobre el salario máximo de su tipo de trabajo.
DELETE FROM employees WHERE salary in (SELECT e.salary FROM employees e
JOIN jobs j on e.job_id = j.job_id
WHERE e.salary > j.max_salary);
--4.Nos informa que la empresa dejará de prestar operaciones en Canadá, 
--por lo que nos solicitan que eliminemos todos los empleados, 
--departamentos y locaciones pertenecientes a Canadá junto con el país.
DELETE FROM employees WHERE department_id= 2; 
DELETE FROM departments WHERE location_id = 1800;
DELETE FROM locations WHERE country_id= "CA"; 
DELETE FROM countries WHERE country_id = "CA";
--5.Nos solicitan un listado que contenga nombre, apellido, departamento 
--y país de todos los elementos que trabajan en United Kingdom.
SELECT e.first_name, e.last_name, d.department_name, c.country_name FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
WHERE country_name like 'United Kingdom';
--6.Eliminar todos los trabajos que no posean empleados asociados, 
--la query tiene que tener la capacidad de eliminar los jobs que no posean 
--empleados de una sola ejecución sin indicar de manera manual el número 
--de jobs_id a eliminar.
DELETE FROM jobs
WHERE job_id NOT IN (SELECT DISTINCT job_id FROM employees);
--7.Calcular la cantidad de personas, el sueldo promedio, mínimo y máximo 
--de todos los puestos laborales (job_title), descartando aquellos que 
--tengan un sólo empleado.
SELECT j.job_title,COUNT(e.first_name) AS cantidad_personas,AVG(e.salary) AS sueldo_promedio,MIN(e.salary) AS sueldo_minimo,MAX(e.salary) AS sueldo_maximo FROM employees e
JOIN jobs j on e.job_id = j.job_id 
GROUP BY job_title
HAVING COUNT(employee_id) > 1;

