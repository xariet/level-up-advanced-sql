--Retrieve a list of employers, including first and last names,
-- and the first and last names of their immidiate managers.
select e.firstName, e.lastName,d.firstName,
 d.LastName from 
 employee e join employee d 
 on e.managerID=d.employeeID;
