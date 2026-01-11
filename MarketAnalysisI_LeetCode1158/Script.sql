SELECT 
user_id as buyer_id,
join_date,
COUNT(order_date) as orders_in_2019
FROM Users u
LEFT JOIN Orders o
ON user_id = buyer_id
AND order_date >= '2019-01-01' 
AND order_date < '2020-01-01'
GROUP BY user_id, join_date
ORDER BY user_id;