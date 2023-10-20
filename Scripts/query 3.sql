--get a list of all sales and all customers even if some of the data 
--has been removed (note that SQLLite doesn't support FULL JOIN)
-- Left Join to find rows in "sales" with no matching customer
SELECT s.*, c.*
FROM sales s
LEFT JOIN customer c ON s.customerid = c.customerid
WHERE c.customerid IS NULL

UNION

-- Right Join to find rows in "customer" with no matching sale
SELECT s.*, c.*
FROM sales s
RIGHT JOIN customer c ON s.customerid = c.customerid
WHERE s.salesId IS NULL

UNION

-- Inner Join to find rows with matching sales and customers
SELECT s.*, c.*
FROM sales s
INNER JOIN customer c ON s.customerid = c.customerid;
