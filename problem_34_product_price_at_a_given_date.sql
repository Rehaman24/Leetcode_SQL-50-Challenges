-- Find Latest Price: For each product, find the price with the latest change_date before or equal to the target date.

-- Handle Products Without Price Changes: Assign default price (10) if no price change exists before the target date.

-- Write your MySQL query statement below
SELECT product_id, new_price AS price 
FROM Products 
WHERE (product_id, change_date) IN (
    SELECT product_id, MAX(change_date) 
    FROM Products 
    WHERE change_date <= '2019-08-16' 
    GROUP BY product_id
)
UNION
SELECT product_id, 10 AS price 
FROM Products
GROUP BY product_id 
HAVING MIN(change_date) > '2019-08-16';
