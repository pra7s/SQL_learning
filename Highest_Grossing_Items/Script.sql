WITH CTE AS (
             SELECT
             category,
             product,
             SUM(spend) AS total_spend,
             RANK()OVER(
             PARTITION BY category
             ORDER BY SUM(spend) DESC) as ranking
             FROM product_spend
             WHERE EXTRACT(YEAR FROM transaction_date)=2022
             GROUP BY category, product
             )
             
SELECT
category,
product,
total_spend
FROM CTE
where ranking <= 2;