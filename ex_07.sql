SELECT i.Total, c.FirstName || ' ' || c.Lastname AS CustomerFullName, i.BillingCountry, e.FirstName || ' ' || e.Lastname AS EmployeeFullName
FROM Invoice i
         JOIN Customer c ON i.CustomerId = c.CustomerId
         JOIN Employee e ON c.SupportRepId = e.EmployeeId
WHERE e.Title LIKE '%sales%'
  AND e.Title LIKE '%agent%';