/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
*/
SELECT sum(c.POPULATION)
FROM CITY c 
INNER JOIN COUNTRY co
ON c.COUNTRYCODE = co.CODE
WHERE co.CONTINENT = 'Asia'
