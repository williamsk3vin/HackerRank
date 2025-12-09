/*
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'. 
*/
SELECT c.NAME
FROM CITY c
INNER JOIN COUNTRY co
ON c.COUNTRYCODE = co.CODE
WHERE co.CONTINENT = 'Africa'
