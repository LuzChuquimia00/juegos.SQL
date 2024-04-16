SELECT name 
  FROM sqlite_master
 where type = 'table'
 ---------
 SELECT sql 
  FROM sqlite_master
 where name = 'crime_scene_report'
 ------------
 SELECT * 
FROM crime_scene_report
WHERE date = "20180115" AND city = "SQL City" AND type = "murder"
---------------------------------
SELECT * FROM interview
WHERE person_id = "16371"
-------------------
SELECT *, max(address_number) FROM person
WHERE address_street_name = "Northwestern Dr"
--------------------------------------
SELECT * FROM person
WHERE license_id = "664760"
--183779--
--423327--
--664760--  
-----------------------
SELECT * FROM drivers_license
WHERE plate_number LIKE '%H42W%'
--183779--
--423327--
--664760--  
-------------------------
SELECT * FROM get_fit_now_member
WHERE membership_status = "gold"
--------------------
SELECT * FROM get_fit_now_member--encontramos al asesino--
WHERE membership_status = "gold" AND person_id = "67318"
--183779, 78193--
--423327,67318--
--664760,51739--
-------------------

