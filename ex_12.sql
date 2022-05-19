select InvoiceId, t.name as track_name, ar.name as artist_name from InvoiceLine i
join Track t on i.TrackId = t.TrackId
join Album a on t.AlbumId = a.AlbumId
join Artist ar on a.ArtistId = ar.ArtistId
