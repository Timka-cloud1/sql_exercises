SELECT t.Name, count(il.Quantity)
FROM Track t
         JOIN InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY count(il.Quantity) DESC
LIMIT 5;
