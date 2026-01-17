### LeetCode 176 — Second Highest Salary
Used `DENSE_RANK()` to rank salaries in descending order so rank = 2 represents the **second-highest distinct** salary (handles duplicates cleanly).  
Then filtered to `rank = 2` and applied `MAX(salary)` to **collapse to a single row**, which also returns `NULL` automatically if no second-highest salary exists.
