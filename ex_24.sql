select t.name, count(il.Quantity) as count from InvoiceLine il
join Track t on il.TrackId = t.TrackId
group by t.name order by count desc limit 5;
