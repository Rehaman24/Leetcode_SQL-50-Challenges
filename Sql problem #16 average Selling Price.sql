-- Problem: Average Selling Price
-- LeetCode Link: https://leetcode.com/problems/average-selling-price/?envType=study-plan-v2&envId=top-sql-50
-- Approach: 
-- Join Prices and UnitsSold on product_id and purchase_date within the price period.
-- Calculate total revenue as price * units sold, sum revenue and units per product.
-- Compute average price = total revenue / total units sold, rounded to 2 decimals.
-- Handle products with no sales by returning 0 as average price.

select p.product_id,
ifnull(round(sum(p.price * u.units) / sum(u.units),2),0) as average_price
from prices p left join unitssold u on 
p.product_id = u.product_id
where u.purchase_date between p.start_date and p.end_date
group by p.product_id
