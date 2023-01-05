SELECT name_album, release_year FROM Albums
WHERE release_year = 2016;

SELECT name_track, length_track FROM Tracks
ORDER BY length_track DESC 
LIMIT 1;

SELECT name_track, length_track FROM Tracks
WHERE length_track >= 3.5;

SELECT name_collection, release_year FROM Collections
WHERE release_year >= 2018 AND release_year <= 2020;

SELECT name_track FROM tracks
WHERE name_track LIKE '%my%';


SELECT name_singer FROM singers
WHERE name_singer NOT LIKE '% %';














