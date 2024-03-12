# Write your MySQL query statement below

# USING INNER JOIN
SELECT w1.id
FROM Weather w1
JOIN Weather w2 ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
AND w1.temperature > w2.temperature;1


# USING NESTED QUERY
SELECT id
FROM Weather w1
WHERE w1.temperature > (
    SELECT temperature FROM Weather w2
    WHERE DATEDIFF(w1.recordDate, w2.recordDate) = 1
)