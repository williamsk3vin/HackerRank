/*
Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
Your result cannot contain duplicates.
*/
SELECT DISTINCT(CITY)
FROM STATION
WHERE substring(CITY,1,1) NOT IN ('A','E','I','O','U')
AND substring(CITY,char_length(CITY),1) NOT IN ('a','e','i','o','u');
