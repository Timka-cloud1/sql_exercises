select t.name, strftime('%Y', i.InvoiceDate) date,
count(il.Quantity) as total from Invoice i
join InvoiceLine il on i.InvoiceId = il.InvoiceId
join Track t on il.TrackId = t.TrackId
where  strftime('%Y', i.InvoiceDate) = '2013'
group by t.name  order by total desc;
