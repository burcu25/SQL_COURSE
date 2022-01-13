--1. Questions Answer
SELECT AlbumId, count( AlbumId) as num_tracks
FROM tracks
GROUP by AlbumId
ORDER by num_tracks DESC;

--2. Qestions Answer
SELECT tracks.Name, albums.Title
FROM tracks
JOIN albums
on tracks.AlbumId = albums.AlbumId;

--3. Qestions Answer
SELECT albums.AlbumId, albums.Title, min(tracks.Milliseconds) as duration
FROM albums
JOIN tracks on tracks.AlbumId = albums.AlbumId
GROUP by Title
ORDER by duration DESC;

--4. Qestions Answer
SELECT a.AlbumId, a.Title, sum(t.Milliseconds) as total_duration
FROM albums a
JOIN tracks t
on a.AlbumId = t.AlbumId
GROUP by a.Title
ORDER by total_duration DESC;

--5. Questions Answer
SELECT a.AlbumId, a.Title, sum(t.Milliseconds) as total_duration
FROM albums a
JOIN tracks t
on a.AlbumId = t.AlbumId
GROUP by a.Title
HAVING total_duration > 4200000
ORDER by total_duration DESC;



