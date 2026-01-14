WITH last_txn AS (
  SELECT user_id, MAX(transaction_date) AS last_date
  FROM user_transactions
  GROUP BY user_id
)
SELECT
  ut.transaction_date,
  ut.user_id,
  COUNT(*) AS purchase_count
FROM user_transactions ut
JOIN last_txn lt
  ON ut.user_id = lt.user_id
 AND ut.transaction_date = lt.last_date
GROUP BY ut.transaction_date, ut.user_id;