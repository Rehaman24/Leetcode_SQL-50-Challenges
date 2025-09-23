-- Find the Second Highest Salary: Order distinct salaries descending and pick the second value using OFFSET 1.

SELECT (SELECT DISTINCT salary 
        FROM Employee 
        ORDER BY salary DESC 
        LIMIT 1 OFFSET 1) AS SecondHighestSalary;
