--ACT4  Encontrar el nombre y la dirección completa
-- de la persona que vive en la anteúltima casa
-- de la calle 'Franklin Ave'--
SELECT name AS nombrePersonas , address_street_name AS direccion FROM person
WHERE direccion LIKE 'Franklin Ave'
ORDER BY name ASC
LIMIT 1 OFFSET 43;
