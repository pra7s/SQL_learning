SELECT
d.name as Department,
e.name as Employee,
salary as Salary
FROM Employee e
JOIN Department d
ON departmentId = d.id
WHERE (departmentId,salary) IN (
    SELECT
    departmentId,
    max(salary)
    FROM Employee
    GROUP BY departmentId
);
