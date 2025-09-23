-- Group by Class: Group records by class to analyze student counts.

-- Filter Classes: Use HAVING to select only classes with 5 or more distinct students.

-- Write your MySQL query statement below
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(DISTINCT student) >= 5;
