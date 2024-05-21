
-- ACT8 Hacer un ranking de los autos 
-- (marca y modelo) que manejan las
-- personas que ganan menos de 35000 dolares
-- al año.  Este ranking debe estar ordenado
-- desde los más populares a los menos populares
-- y no debe incluir los modelos que tengan 
-- menos de 4 autos.
SELECT d.car_make, count(d.car_make), d.car_model, c.annual_income FROM drivers_license d
JOIN person p ON d.id = p.license_id
JOIN income c ON p.ssn = c.ssn
WHERE c.annual_income < 35000
GROUP by car_make
HAVING count(car_make) > 4
ORDER BY count(car_model) DESC;