# Highest Salary per Department (SQL)

- I first find the **maximum salary in each department**.
- Then I keep only the **employees whose salary equals that max**.
- `WHERE (departmentId, salary) IN (...)` is just checking if an employee belongs to that max-salary set.

Reminder to self:  
If grouping removes the data you need (like names), **do the grouping separately and filter later**.
