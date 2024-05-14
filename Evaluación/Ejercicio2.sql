--ACT2  Listar el nombre de las personas y los datos del auto
-- (marca, modelo y patente) de todos los
-- varones más de 70 años, elegir el orden
-- en que se muestran--
SELECT p.name AS nombrePersonas, d.car_make AS marca, d.car_model AS modelo, d.plate_number AS patente, d.age AS edad, d.gender AS genero
FROM person p 
JOIN drivers_license d ON p.license_id = d.id
WHERE d.age > 70 and d.gender LIKE 'male'
ORDER BY d.age DESC;

