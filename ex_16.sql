select i.InvoiceId, count(il.InvoiceLineId) from Invoice i
join InvoiceLine IL on i.InvoiceId = IL.InvoiceId
group by i.InvoiceId
