WITH CTE AS (
SELECT 
user_id,
transaction_date,
dense_rank() over (
partition by user_id order by transaction_date DESC) as rank
FROM user_transactions
)

SELECT 
transaction_date,
user_id,
count(*) as purchase_count
FROM CTE 
where rank = 1
GROUP BY user_id, transaction_date
ORDER BY transaction_date;