SELECT i.InvoiceId AS Invoice_Number, t.Name AS Track_Name, ar.Name AS Artist_Name
FROM InvoiceLine i
JOIN Track t ON i.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId
GROUP BY t.Name;
