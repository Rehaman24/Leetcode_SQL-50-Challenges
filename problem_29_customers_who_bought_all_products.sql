-- Identify Unique Customer Purchases: Select distinct purchases per customer.

-- Group by Customer: Group records by customer_id.

-- Filter Customers: Use HAVING to include only customers whose purchase count equals the total number of products.

-- Write your MySQL query statement below
WITH t1 AS (
    SELECT DISTINCT * 
    FROM customer
)
SELECT customer_id
FROM t1
GROUP BY customer_id
HAVING COUNT(*) = (SELECT COUNT(*) FROM Product);
