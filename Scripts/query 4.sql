--pull a report showing the number of cars sold by each employee

SELECT e.firstName, e.lastName, COUNT(*) AS num_of_cars
FROM sales s
INNER JOIN employee e ON s.employeeid = e.employeeid
GROUP BY e.firstName, e.lastName
ORDER BY num_of_cars DESC;
