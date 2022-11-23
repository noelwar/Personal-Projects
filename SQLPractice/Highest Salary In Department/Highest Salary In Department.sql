WITH get_salary AS(
SELECT
    first_name,
    department,
    salary, 
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_salary
FROM employee
)

SELECT
    first_name,
    department,
    salary 
FROM get_salary
WHERE rank_salary = 1;
