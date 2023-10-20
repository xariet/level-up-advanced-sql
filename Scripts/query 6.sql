--create a report that lists employees who have made more 
--than 5 sales this year

select firstName, lastName,count(salesId) as numOfSales
 from sales s inner join
  employee e
   on s.employeeid=e.employeeid
   where solddate>= date('now', 'start of year') 
   group by firstName, lastName
   having numOfSales>5;