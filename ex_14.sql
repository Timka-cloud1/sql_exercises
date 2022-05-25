SELECT count(*) AS Total_Tracks, pl.Name AS Playlist_Name
FROM Playlist pl
         JOIN PlaylistTrack pt ON pl.PlaylistId = pt.PlaylistId
GROUP BY pl.Name;