select FirstName || ' ' || LastName as fullname, i.InvoiceId , i.InvoiceDate, i.BillingCountry from Customer c inner join Invoice i on c.CustomerId = i.CustomerId where c.Country == 'Brazil';
