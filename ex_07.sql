select i.total, c.FirstName || " " || c.LastName as fullname, 
i.BillingCountry, e.FirstName || " " || e.LastName as fullname
from Invoice i 
inner JOIN Customer c on i.CustomerId = c.CustomerId 
inner join Employee e on c.SupportRepId = e.EmployeeId
WHERE title LIKE '%sales%'
   OR '%agent%';
