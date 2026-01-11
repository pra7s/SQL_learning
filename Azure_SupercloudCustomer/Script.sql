WITH CTE AS (
             SELECT
             customer_id,
             count(DISTINCT product_category) as count_category
             FROM customer_contracts c
             JOIN products p
             ON c.product_id = p.product_id
             GROUP BY customer_id
             )
SELECT 
customer_id
FROM CTE
WHERE count_category = 
(SELECT COUNT(DISTINCT product_category) FROM products);