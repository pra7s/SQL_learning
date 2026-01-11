1. Used Users.user_id as buyer_id because the Users table contains all users, while Orders.buyer_id includes only users who have placed orders. This ensures users with zero orders are not excluded.

2. Used a LEFT JOIN from Users to Orders so that every user appears in the result set. This allows the query to return 0 for users who placed no orders in 2019 instead of dropping them.

3. Applied the order_date filter in the JOIN condition instead of the WHERE clause. Filtering in WHERE would convert the LEFT JOIN into an INNER JOIN and remove users with no orders in 2019, which is not desired.

4. Grouped by user_id to produce one row per user. Included join_date in the GROUP BY because it is selected and not aggregated, and SQL requires all non-aggregated selected columns to be grouped.