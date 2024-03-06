# using inner join
SELECT e.name as Employee
FROM Employee AS e
INNER JOIN Employee AS m
ON e.managerId = m.id AND e.salary > m.salary

# using self join
SELECT e.name AS Employee
FROM Employee e, Employee m
WHERE e.managerId = m.id AND e.salary > m.salary

# using subquery
SELECT name as Employee
FROM Employee AS e
WHERE salary > (
    SELECT salary FROM Employee
    WHERE id = e.managerId
)