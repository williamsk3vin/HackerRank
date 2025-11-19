/*
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. 
The output should consist of four columns (Doctor, Professor, Singer, and Actor) in that specific order, with their respective names
listed alphabetically under each column.

Note: Print NULL when there are no more names corresponding to an occupation.
*/
WITH ranked AS (
    SELECT Name, Occupation, ROW_NUMBER() OVER 
        (PARTITION BY Occupation ORDER BY Occupation ASC, Name ASC)
        as rn
        FROM OCCUPATIONS
)
SELECT
    MAX(CASE WHEN Occupation = 'Doctor'    THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer'    THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor'     THEN Name END) AS Actor
FROM ranked
GROUP BY rn
ORDER BY rn;
