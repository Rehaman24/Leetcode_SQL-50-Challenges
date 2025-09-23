-- Filter Orders in February 2020: Include only orders in the given period.
-- Sum Units per Product: Aggregate units ordered per product.
-- Include Products with >= 100 Units: Filter using HAVING clause.

SELECT p.product_name,
       SUM(o.unit) AS unit
FROM Products p
LEFT JOIN Orders o ON o.product_id = p.product_id
WHERE MONTH(o.order_date) = 2 AND YEAR(o.order_date) = 2020
GROUP BY o.product_id
HAVING SUM(o.unit) >= 100;
