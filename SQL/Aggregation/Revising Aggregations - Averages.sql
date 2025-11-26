/*
Query the average population of all cities in CITY 
where District is California. 
*/
SELECT avg(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';
