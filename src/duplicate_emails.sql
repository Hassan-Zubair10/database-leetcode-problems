# Write your MySQL query statement below

# USING INNER JOIN
SELECT DISTINCT p1.email AS Email
FROM Person AS p1
INNER JOIN Person AS p2
ON p1.email = p2.email AND p1.id != p2.id;

# USING SELF JOIN
SELECT DISTINCT p1.email AS Email
FROM Person p1, Person p2
WHERE p1.email = p2.email AND p1.id != p2.id;