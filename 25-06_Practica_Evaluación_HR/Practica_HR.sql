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