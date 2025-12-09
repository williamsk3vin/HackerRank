/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) 
and their respective average city populations (CITY.Population) 
rounded down to the nearest integer.
*/
SELECT co.CONTINENT, FLOOR(AVG(c.POPULATION))
FROM CITY c
INNER JOIN COUNTRY co
ON c.COUNTRYCODE = co.CODE
GROUP BY co.CONTINENT
