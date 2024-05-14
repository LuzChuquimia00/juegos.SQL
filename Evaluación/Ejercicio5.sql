--ACT5  Encontrar la edad mínima, máxima y promedio
-- de las mujeres que tienen licencia de conducir--
SELECT min(d.age) AS minimaEdad,max(d.age) AS maximaEdad,avg(d.age) AS promedioEdad, d.gender AS genero, p.license_id AS licencia FROM person p
JOIN drivers_license d ON p.license_id = d.id
WHERE d.gender LIKE 'female%'
GROUP BY d.gender;