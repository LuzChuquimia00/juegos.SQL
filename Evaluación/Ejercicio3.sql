--ACT3 Buscar la lista de todas las personas
-- que no tienen licencia de conducir--
SELECT p.name, d.id FROM person p 
LEFT JOIN drivers_license d ON p.license_id = d.id
WHERE d.id IS NULL;