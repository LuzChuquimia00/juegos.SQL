--ACT1 Mostrar nombre y apellido y sueldo de todos los empleados y empleadas que ganen menos de 6.000 (seis mil) dólares--
SELECT first_name, last_name, salary FROM employees
WHERE salary < 6000;
--ACT2 Mostrar nombre, apellido, departamento, ciudad y estado/provincia de cada empleado/a.--
SELECT e.first_name, e.last_name, d.department_id , l.city, l.state_province FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id;
--ACT3 Mostrar el nombre de todos los empleados junto con el nombre de su jefe (manager), ordenados por el nombre del jefe.--
SELECT e.first_name, m.first_name AS nomEmpleados FROM employees e 
JOIN employees m ON e.employee_id = m.manager_id
ORDER BY e.first_name;
--ACT4 Mostrar el nombre y apellido de los empleados, junto al nombre de sus hijos, ordenados alfabéticamente.--
SELECT e.first_name,d.first_name FROM employees e 
JOIN dependents d ON e.employee_id = d.employee_id
ORDER BY e.first_name, d.first_name DESC;
--ACT5 Mostrar el nombre del empleado con su puesto de trabajo y su salario máximo, ordenado por salario de mayor a menor.--
SELECT e.first_name,j.max_salary,j.job_title FROM employees e 
JOIN jobs j ON e.job_id = j.job_id
ORDER BY j.max_salary DESC;
--ACT6 Mostrar el nombre del empleado completo con su departamento y su salario, ordenados por nombre y departamento.--
SELECT e.first_name, e.last_name, d.department_id ,e.salary FROM employees e
JOIN departments d on e.department_id = d.department_id
ORDER BY e.first_name, d.department_id;
--ACT7 Mostrar el nombre del empleado y su estado, ordenados alfabéticamente.--
SELECT e.first_name, d.department_id, l.state_province FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
ORDER BY e.first_name DESC;
--ACT8 Mostrar nombre empleado completo, junto con su pais y region, ordenado a su elección.--
SELECT e.first_name, e.last_name,c.country_name,r.region_name FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
JOIN regions r on c.region_id = r.region_id
ORDER BY e.first_name DESC;  
--ACT9 Mostrar el país junto a su región, orden descendente.--
SELECT c.country_name,r.region_name FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
JOIN regions r on c.region_id = r.region_id
ORDER BY c.country_name DESC;
--ACT10 Mostrar nombre del empleado, nombre del trabajo y su salario minimo, ordenado por salario a su eleccion.--
SELECT e.first_name,j.min_salary,j.job_title FROM employees e 
JOIN jobs j ON e.job_id = j.job_id
ORDER BY j.min_salary DESC;
