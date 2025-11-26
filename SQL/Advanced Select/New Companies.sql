/*
Given the table schemas below, write a query to print the company_code, 
founder name, total number of lead managers, 
total number of senior managers, total number of managers, 
and total number of employees. 
Order your output by ascending company_code.
*/
SELECT 
    c.company_code,
    c.founder,
    (
        SELECT COUNT(DISTINCT lm.lead_manager_code) 
        FROM Lead_Manager lm 
        WHERE lm.company_code = c.company_code
    ),
    (
        SELECT COUNT(DISTINCT sm.senior_manager_code)
        FROM Senior_Manager sm
        WHERE sm.company_code = c.company_code
    ),
    (
        SELECT COUNT(DISTINCT m.manager_code) 
        FROM Manager m
        WHERE m.company_code = c.company_code
    ),
    (
        SELECT COUNT(DISTINCT e.employee_code) 
        FROM Employee e 
        WHERE e.company_code = c.company_code
    )
FROM Company c
ORDER BY c.company_code;
