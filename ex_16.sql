SELECT iv.InvoiceId, count(*) AS Line_Items
FROM Invoice iv
         JOIN InvoiceLine il ON iv.InvoiceId = il.InvoiceId
GROUP BY iv.InvoiceId;
