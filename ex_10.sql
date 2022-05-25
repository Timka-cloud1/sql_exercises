SELECT InvoiceId, count(*) AS Invoice_Line_Count
FROM InvoiceLine
GROUP BY InvoiceId;