SELECT MAX(months*salary), COUNT(employee_id)
FROM Employee 
WHERE months*salary = (
    SELECT MAX(months*salary)
    FROM Employee
)