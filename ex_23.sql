SELECT t.Name, count(il.Quantity)
FROM Track t
         JOIN InvoiceLine il ON t.TrackId = il.TrackId
         JOIN Invoice iv ON il.InvoiceId = iv.InvoiceId
WHERE iv.InvoiceDate LIKE '2013%'
GROUP BY t.Name
ORDER BY count(il.Quantity) DESC;
