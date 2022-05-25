SELECT sum(iv.Total) AS 'Total Sales', e.FirstName || ' ' || e.LastName AS 'Sales Agent'
FROM Invoice iv
JOIN Customer c ON iv.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
WHERE iv.InvoiceDate LIKE '2009%'
GROUP BY c.SupportRepId
ORDER BY sum(iv.Total) DESC
LIMIT 1;
