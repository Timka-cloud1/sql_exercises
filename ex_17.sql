select sum(i.total), e.FirstName || ' ' || e.LastName as fullname
from Employee e
join Customer c on e.EmployeeId = c.SupportRepId
join Invoice i on c.CustomerId = i.CustomerId 
where title like '%sales%' or '%agent%'
group by fullname;
