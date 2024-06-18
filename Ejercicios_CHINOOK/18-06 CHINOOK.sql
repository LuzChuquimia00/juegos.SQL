--1 Agregar dos regiones:
--a. África
--b. Middle east
INSERT INTO regions(region_name) VALUES ('Middle east'), ('Africa');
--2 Modificar / pasar los países de la actual region “Middle east and africa” a las nuevas regiones
UPDATE countries
SET region_id = 5 --se le agrego a las regiones  los paises de Middle east and africa a solo africa ya que lo habiamos separado--
WHERE country_id = "IL" or country_id = "KW";
-----------------------
UPDATE countries
SET region_id = 6 --se le agrego a las regiones  los paises de Middle east and africa a solo MIDDLE EAST ya que lo habiamos separado--
WHERE country_id = "EG" or country_id = "NG" or country_id = "ZM" or country_id= "ZW";
--3 Una vez que la región “Middle east and africa” este vacía borrar la región.
DELETE FROM regions WHERE region_id = 4;
--4 Agregar dos países más a cada una de las nuevas regiones.
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('SA','Sudàfrica','6'),('BU','Burundi','6'); --REGION AFRICA--
-------------------------------
INSERT INTO countries(country_id,country_name,region_id) 
VALUES ('AM','Armenia','5'),('GA','Georgia','5'); --REGION MIDDLE EAST
--5 Volver a crear la región “Middle east and africa” 
INSERT INTO regions(region_name) 
VALUES ('Middle east and africa');
--6 Utilizando IN y subquery pasar los países que se 
--encuentran en la región Africa y Middle East (5 y 6) a la nueva región 
UPDATE countries
SET region_id= 7 
WHERE region_id IN (SELECT region_id FROM countries
						WHERE region_id = 5 OR region_id = 6);