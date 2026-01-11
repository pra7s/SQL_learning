SELECT 
c.id as cus_id,
c.name as cus_name, (
  SELECT max(id)
  FROM purchase p
  WHERE customer_id = c.id
  ) AS latest_purchase_id, (
  SELECT sum(quantity)
  FROM purchase_item i
  JOIN purchase p
  ON purchase_id = p.id
  WHERE customer_id = c.id 
  ) AS all_items_purchased
FROM customer c;