1.Used a CTE to first calculate total_spend per (category, product) and then assign a rank within each category. Creating the ranking in the CTE makes it possible to filter on it in the outer query.

2. Did not use SUM(spend) OVER(...) because GROUP BY category, product already collapses the data to one row per product within each category, so SUM(spend) naturally becomes the total spend for that product in that category.

3.Used PARTITION BY category (not category, product) because we want products to compete within the same category.

-If we partitioned by (category, product), each partition would contain only one product, so every row would get rank 1 and we would not be able to find the “top 2” products per category.