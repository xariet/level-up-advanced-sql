--show report that show number of cars sold this month and last month
with cte as (
SELECT strftime('%Y-%m', soldDate) AS year_month, 
salesAmount, 
count(inventoryId) as num_cars
FROM sales
group by year_month
order by year_month)
select * , lag(num_cars,1,0)over(order by year_month) as last_month_sales
from cte
