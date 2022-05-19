select count(c.CustomerId), e.FirstName || ' ' || e.LastName as fullname
from Employee e join Customer c on e.EmployeeId = c.SupportRepId
where title like '%sales%' or '%agent%'
group by fullname;
