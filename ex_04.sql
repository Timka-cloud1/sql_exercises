SELECT FirstName || ' ' || Lastname AS FullName
FROM Employee
WHERE Title LIKE '%sales%'
  AND Title LIKE '%agent%';