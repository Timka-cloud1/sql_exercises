select count(plt.TrackId), name from Playlist p
left join PlaylistTrack plt on p.PlaylistId = plt.PlaylistId
group by name;
