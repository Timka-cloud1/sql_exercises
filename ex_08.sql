SELECT strftime('%Y', InvoiceDate) AS Year, sum(Total) AS Sales_Total
FROM Invoice
WHERE InvoiceDate LIKE '2009%'
   OR InvoiceDate LIKE '2011%'
GROUP BY strftime('%Y', InvoiceDate);
