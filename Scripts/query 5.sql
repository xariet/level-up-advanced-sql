--produce a repot that lists the least and most expensive
-- cars sold by each employee this year
WITH cte AS (
    SELECT s.salesAmount, s.inventoryId, e.firstName, e.lastName
    FROM sales s
    INNER JOIN employee e ON s.employeeId = e.employeeId
    WHERE s.soldDate >= date('now', 'start of year')
)
SELECT firstName, lastName, MAX(salesAmount) AS max, MIN(salesAmount) AS min
FROM cte
GROUP BY firstName, lastName;
