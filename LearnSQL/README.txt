1. Latest purchase per customer
I used a correlated subquery to compute the latest purchase ID for each customer. Since purchase.id is chronological, the most recent purchase corresponds to the maximum purchase ID.
The subquery is correlated using customer_id = c.id, ensuring the maximum is calculated per customer, not globally.

2. Total quantity of items purchased
To calculate the total quantity of items purchased by each customer, I used a JOIN-based correlated subquery instead of an IN subquery.
This approach is more readable and directly models the relationship between purchases and purchase items. The join filters purchases by customer_id = c.id, and then aggregates item quantities for those purchases.