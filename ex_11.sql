select InvoiceId, t.name from InvoiceLine i
join track t on i.TrackId = t.TrackId;
