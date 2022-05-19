select count(InvoiceId) as number_of_positions from InvoiceLine where InvoiceId = 37
group by InvoiceId;
