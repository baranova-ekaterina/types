--1
SELECT g.name_genre, COUNT(s.name_singer) FROM genre g
LEFT JOIN genre_singer gs ON g.id = gs.genre_id
LEFT JOIN singers s ON gs.singer_id = s.id
GROUP BY g.name_genre
ORDER BY COUNT(s.id) DESC;

--2
SELECT t.name_track, a.release_year  FROM albums a 
JOIN tracks t ON t.album = a.id 
WHERE release_year >=2019 AND release_year <= 2020;

--3
SELECT a.name_album, AVG(t.length_track) FROM albums a
JOIN tracks t ON t.album = a.id 
GROUP BY a.name_album 
ORDER BY AVG(t.length_track) DESC;

--4 этот вариант не отсекает исполнителей с альбомами 2020 года
SELECT DISTINCT name_singer FROM singers s
JOIN album_singer sa ON sa.id_singer = s.id 
JOIN albums a ON a.id = sa.id_album 
WHERE release_year NOT IN (SELECT release_year FROM albums a2 
WHERE a2.release_year = 2020)
ORDER BY name_singer;

--4 рабочая версия
SELECT DISTINCT name_singer FROM singers s
WHERE name_singer NOT IN (
SELECT DISTINCT name_singer FROM singers 
JOIN album_singer sa ON sa.id_singer = s.id 
JOIN albums a ON a.id = sa.id_album 
WHERE a.release_year = 2020)
ORDER BY name_singer; 

--5
SELECT name_collection FROM collections c 
JOIN track_collection tc ON c.id = tc.id_collection 
JOIN tracks t ON t.id = tc.id_track 
JOIN albums a ON a.id = t.album
JOIN album_singer as2 ON as2.id_album = a.id 
JOIN singers s ON s.id = as2.id_singer 
WHERE name_singer LIKE '%Evanescence%'
ORDER BY name_collection;

--6
SELECT name_album FROM albums a 
JOIN album_singer as2 ON as2.id_album = a.id 
JOIN singers s ON s.id = as2.id_singer 
JOIN genre_singer gs ON gs.singer_id = s.id 
JOIN genre g ON g.id = gs.genre_id 
GROUP BY a.name_album 
HAVING  COUNT(DISTINCT g.name_genre) > 1
ORDER BY a.name_album;

--7
SELECT name_track FROM tracks t
LEFT JOIN track_collection tc ON t.id = tc.id_track 
WHERE id_track IS NULL; 

--8
SELECT s.name_singer, t.length_track FROM singers s
JOIN album_singer as2 ON as2.id_singer = s.id 
JOIN albums a ON a.id = as2.id_album 
JOIN tracks t ON t.album = a.id 
WHERE t.length_track = (SELECT min(length_track) FROM tracks)
ORDER BY length_track DESC;

--9
SELECT a.name_album, count(*) FROM albums a 
JOIN tracks t ON t.album = a.id
GROUP BY a.name_album 
HAVING  count(*) = (SELECT count(*) FROM albums a
                   JOIN tracks t ON t.album = a.id
                   GROUP BY a.name_album 
                   ORDER BY count(*)
                   LIMIT 1);






