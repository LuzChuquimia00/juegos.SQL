--ACT1--
SELECT first_name, last_name, salary FROM employees
WHERE salary < 6000;
--ACT2--
SELECT e.first_name, e.last_name, d.department_id , l.city, l.state_province FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id;
--ACT3--
SELECT e.first_name, m.first_name AS nomEmpleados FROM employees e 
JOIN employees m ON e.employee_id = m.manager_id
ORDER BY e.first_name;
--ACT4--
SELECT e.first_name,d.first_name FROM employees e 
JOIN dependents d ON e.employee_id = d.employee_id
ORDER BY e.first_name, d.first_name DESC;
--ACT5--
SELECT e.first_name,j.max_salary,j.job_title FROM employees e 
JOIN jobs j ON e.job_id = j.job_id
ORDER BY j.max_salary DESC;
--ACT6--
SELECT e.first_name, e.last_name, d.department_id ,e.salary FROM employees e
JOIN departments d on e.department_id = d.department_id
ORDER BY e.first_name, d.department_id;
--ACT7--
SELECT e.first_name, d.department_id, l.state_province FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
ORDER BY e.first_name DESC;
--ACT8--
SELECT e.first_name, e.last_name,c.country_name,r.region_name FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
JOIN regions r on c.region_id = r.region_id
ORDER BY e.first_name DESC;  
--ACT9--
SELECT c.country_name,r.region_name FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
JOIN regions r on c.region_id = r.region_id
ORDER BY c.country_name DESC;
--ACT10--
SELECT e.first_name,j.min_salary,j.job_title FROM employees e 
JOIN jobs j ON e.job_id = j.job_id
ORDER BY j.min_salary DESC;