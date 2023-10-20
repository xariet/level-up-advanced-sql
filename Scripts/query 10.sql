--get a list of sales people and rank the car models they've sold the most
select model, count(model) as numSold,salesamount, firstName, lastName,
rank() over(PARTITION by firstName, lastName order by count(model) desc) as rank
from sales s join inventory i on s.inventoryid=i.inventoryid
join employee e on s.employeeId=e.employeeId
join model m on m.modelid=i.modelid
group by  firstName, lastName, model
