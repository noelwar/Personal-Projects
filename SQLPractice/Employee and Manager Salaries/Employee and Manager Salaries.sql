SELECT employee_table.first_name, employee_table.salary
FROM employee AS employee_table
JOIN employee AS manager_table ON employee_table.manager_id = manager_table.id
WHERE employee_table.salary > manager_table.salary;
