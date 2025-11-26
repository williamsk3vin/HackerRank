/*
Query the sum of the populations for all Japanese cities in CITY. 
The COUNTRYCODE for Japan is JPN.
*/
SELECT sum(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';
