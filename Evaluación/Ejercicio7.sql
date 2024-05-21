-- ACT7 Mostrar los nombres, numeros de seguridad social
-- (ssn), id de membresía y tipo de membresía de
-- las personas que fueron al gimnasio aunque sea una
-- vez durante el 2018. Los resultados deben estar
-- ordenados de manera que los de un mismo tipo de
-- membresía (gold, silver, etc) aparezcan todos 
-- seguidos y dentro de cada una ordenados por ssn.   
SELECT p.name,g.membership_status, p.ssn, gt.check_in_date 
FROM person p 
JOIN get_fit_now_member g ON p.id = g.person_id
JOIN get_fit_now_check_in gt ON gt.membership_id = g.id 
WHERE gt.check_in_date LIKE '2018%'
GROUP BY p.id, g.membership_status
ORDER BY g.membership_status ASC, p.ssn ASC
