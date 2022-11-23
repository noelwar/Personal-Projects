WITH get_target AS(
    SELECT 
        first_name, 
        target,
        RANK() OVER(ORDER BY target DESC)
    FROM salesforce_employees
    WHERE manager_id = 13
)

SELECT *
FROM get_target
WHERE rank = 1
