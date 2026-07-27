SELECT (
    SELECT Salary
    FROM (
        SELECT Salary,
               DENSE_RANK() OVER (ORDER BY Salary DESC) AS rnk
        FROM Employee
    ) s
    WHERE rnk = 2
    LIMIT 1
) AS SecondHighestSalary;