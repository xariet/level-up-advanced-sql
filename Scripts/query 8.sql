--create a report which shows the amount of sales per each employee
-- for the last 6 month of 2021 for each month
--first option
with cte as (select *, strftime('%m', soldDate) as month from sales
where strftime('%Y', soldDate)='2021')
select firstName, lastName, month, sum(salesAmount) as totalSales
from cte c inner join employee e on
c.employeeId=e.employeeId
group BY firstName, lastName, month order by month;

--second option

with cte as (select employeeId,salesAmount, strftime('%m', soldDate) as month from sales
where strftime('%Y', soldDate)='2021')
select firstName, lastName, 
sum(case when month='12' then salesAmount end) as DecSales,
sum(case when month='11' then salesAmount end) as NovSales,
sum(case when month='10' then salesAmount end) as OctSales,
sum(case when month='09' then salesAmount end) as SeptSales,
sum(case when month='08' then salesAmount end) as AugSales,
sum(case when month='07' then salesAmount end) as JulySales

from cte c inner join employee e on
c.employeeId=e.employeeId
group by firstName, lastName
order by lastName, firstName


