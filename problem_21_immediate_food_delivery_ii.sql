-- Identify First Orders: For each customer, find the earliest order date using a subquery.

-- Determine Immediate Orders: An order is immediate if order_date equals customer_pref_delivery_date.

-- Calculate Percentage: Compute the percentage of immediate orders among the first orders.

-- Round the Result: Use ROUND() to format the percentage to two decimal places.

-- Write your MySQL query statement below
SELECT 
    ROUND(SUM(IF(order_date = customer_pref_delivery_date, 1, 0)) * 100 / COUNT(DISTINCT customer_id), 2) AS immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN (
    SELECT customer_id, MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
);
