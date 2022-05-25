select t.name as track_name, 
al.title as album_name, 
mt.name as media_type, 
g.name as genre_name 
from track t
join Album al on t.AlbumId = al.AlbumId
join MediaType mt on t.MediaTypeId = mt.MediaTypeId
join Genre g on t.GenreId = g.GenreId;
