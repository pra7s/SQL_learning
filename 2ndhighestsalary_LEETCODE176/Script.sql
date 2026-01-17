WITH ranking as (
    SELECT 
    id,
    salary,
    dense_rank()over(
        order by salary DESC) as ranks
    FROM Employee
)

SELECT 
max(salary) as SecondHighestSalary
FROM ranking
where ranks=2;
    

