--ACT1  Mostrar los nombres de todos los departamentos de la empresa en orden alfabético.--
SELECT department_name AS NombreDeDepartamento FROM departments
ORDER BY department_name ASC;
--ACT2  Mostrar todos los posibles salarios ordenados de mayor a menor y sin repetir.--
SELECT DISTINCT salary AS Posibles_Salarios FROM employees
ORDER BY salary DESC;
--ACT3 Mostrar los puestos laborales de manager (que incluya la palabra manager)--
--junto con sus salarios minimos y maximos, ordenado de mayor a menor--
--primero por salario máximo y luego por el mínimo--
SELECT job_title AS Puestos_laborales, max_salary AS maximoSalario, min_salary AS minimoSalario FROM jobs WHERE job_title LIKE '%Manager%' 
ORDER BY max_salary DESC;--En el tema del orden no nos deja ordenar dos valores de numeros o los que tienen numeros--
--ACT4 Mostrar los nombres de todos los países con su región correspondiente.-- 
--Pensar cómo ordenar para que los países de una misma región queden juntos.--
SELECT c.country_name, r.region_name FROM countries c
JOIN regions r ON c.region_id = r.region_id
ORDER BY c.country_name,r.region_name;
--ACT5 Mostrar nombre, apellido, departamento y salario de los empleados/as que cobren entre 9000 y 17000, ordenado por el criterio que quieran.--
SELECT e.first_name, e.last_name, e.salary, d.department_name FROM employees e 
JOIN departments d ON d.department_id = e.department_id 
WHERE salary < 17000 AND salary > 9000
ORDER BY e.salary;
--ACT6 Mostrar la cantidad total de países que hay por región, descartando los que tengan 5 o menos.--
SELECT count(c.country_name) AS Paises, r.region_name AS Region FROM regions r
JOIN countries c ON c.region_id = r.region_id
GROUP BY r.region_name
HAVING  count(c.country_name) > 5; --count(...) sirve para contar palabras y adjuntarlos con numeros--
--ACT7  Mostrar la fecha más vieja y la más actual de los ingresos de los empleados
--(Pista: las fechas se pueden comparar, la más vieja sería  la menor y la más actual la mayor).--
SELECT MIN(hire_date) AS FechaAntigua,MAX(hire_date) AS FechaActual FROM employees;
--ACT8 Mostrar nombre y apellido y cantidad de hijos-- 
--de los 5 empleados/as que tengan mayor cantidad.--
SELECT e.first_name AS nombresDeLosEmpleados ,e.last_name AS apellidosDeLosEmpleados, count(d.relationship) AS cantidadDeHijos 
FROM employees e 
JOIN dependents d ON e.employee_id = d.employee_id 
GROUP BY nombresDeLosEmpleados, apellidosDeLosEmpleados --recorda preguntar si va un group by--
ORDER BY cantidadDeHijos DESC
LIMIT 5;
--ACT9 Mostrar cual es el empleado con el tercer mejor sueldo.--
SELECT first_name AS nombreDelEmpleado,salary AS salarioDelTercerMejorEmpleado FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 2;
--ACT10 Mostrar la cantidad promedio y la cantidad máxima de hijos por empleado.--
SELECT e.first_name AS nombresDeLosEmpleados, avg(d.relationship) AS promedio, max(d.relationship) as maximaCantidadDeHijos 
FROM employees e 
JOIN dependents d ON e.employee_id = d.employee_id 
GROUP BY nombresDeLosEmpleados
ORDER BY maximaCantidadDeHijos DESC;
--tambien se debe preguntar al profe xq no se ejecuta con algo numerico--gi