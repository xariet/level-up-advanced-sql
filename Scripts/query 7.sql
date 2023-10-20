--create a report showing total sales per each year
with cte as (SELECT salesAmount, strftime('%Y', soldDate) AS year
FROM sales)
select year, format("$%.2f", sum(salesAmount)) from Cte 
group by year
