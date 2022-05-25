SELECT count(*) AS Invoice_Total, iv.BillingCountry
FROM InvoiceLine il
JOIN Invoice iv ON il.InvoiceId = iv.InvoiceId
GROUP BY iv.BillingCountry;
