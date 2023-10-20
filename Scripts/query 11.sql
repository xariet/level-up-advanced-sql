--generate sales report showing sales per month and an annual running total
with cte as (
select strftime('%Y', soldDate) AS year,
strftime('%m', soldDate) AS month, 
sum(salesAmount) as Amount
 from sales
 group by year, month
 order by year, month)
 select *, 
 sum(Amount)over(partition by year order by year,  month) as r_total
 from cte;
