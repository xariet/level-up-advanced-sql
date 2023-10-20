-- Get a list of Sales people with zero sales
SELECT e.employeeId, e.firstName, e.lastName, COALESCE(SUM(s.salesAmount), 0) AS Total
FROM employee e
LEFT JOIN sales s ON e.employeeId = s.employeeId
WHERE e.title = 'Sales Person' AND s.salesAmount IS NULL
GROUP BY e.employeeId, e.firstName, e.lastName;
