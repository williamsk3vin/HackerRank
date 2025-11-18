/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
Your result cannot contain duplicates.
*/
SELECT DISTINCT(CITY)
FROM STATION
WHERE substring(CITY,1,1) NOT IN ('A','E','I','O','U')
OR substring(CITY,char_length(CITY),1) NOT IN ('a','e','i','o','u');
