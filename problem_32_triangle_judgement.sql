-- Check Triangle Validity: For each set of sides (x, y, z), verify if they satisfy the triangle inequality.

-- Assign Result: Use CASE to return 'Yes' if it forms a triangle, otherwise 'No'.

-- Write your MySQL query statement below
SELECT 
    x,
    y,
    z,
    CASE 
        WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM Triangle;
