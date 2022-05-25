SELECT tr.Name AS Track_Name, al.Title AS Album_Title, mt.Name AS Media_Type, g.Name AS Genre_Name
FROM Track tr
         JOIN Album al ON tr.AlbumId = al.AlbumId
         JOIN MediaType mt ON tr.MediaTypeId = mt.MediaTypeId
         JOIN Genre g ON tr.GenreId = g.GenreId;