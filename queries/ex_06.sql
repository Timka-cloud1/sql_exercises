select InvoiceId, e.FirstName || ' ' || e.LastName as fullname
from Invoice i inner join Customer c on
i.CustomerId = c.CustomerId 
inner join Employee e on c.SupportRepId = e.EmployeeId 
WHERE e.Title = 'Sales Support Agent';
