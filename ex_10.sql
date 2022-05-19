select InvoiceId, count(invoiceId) as total_number from InvoiceLine 
group by InvoiceId;
