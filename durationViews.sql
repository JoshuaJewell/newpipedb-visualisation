CREATE VIEW SongsByPlaylist AS
SELECT p.name AS PlaylistName, s.title AS StreamTitle, s.duration
FROM streams s
JOIN playlist_stream_join psj ON s.uid = psj.stream_id
JOIN playlists p ON psj.playlist_id = p.uid;

SELECT * FROM SongsByPlaylist
ORDER BY PlaylistName ASC;


CREATE VIEW TotalDuration AS
SELECT p.name, SUM(s.duration) AS Duration
FROM playlists p
JOIN playlist_stream_join psj ON p.uid = psj.playlist_id
JOIN streams s ON psj.stream_id = s.uid
GROUP BY p.name;

SELECT * FROM TotalDuration;