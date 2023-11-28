SELECT name, COUNT(singer_id) FROM genre
JOIN genresinger ON genre.id = genresinger.genre_id
GROUP BY genre.id
ORDER BY genre.id ASC;

SELECT COUNT(album.id) FROM track 
JOIN album ON track.album_id = album.id
WHERE album.year BETWEEN 2019 AND 2020;

SELECT album.name, AVG(duration) FROM album
JOIN track ON album.id = track.album_id
GROUP BY album.name
ORDER BY MAX(duration) DESC;

SELECT singer.name FROM singer
JOIN singeralbum sa ON singer.id = sa.singer_id
JOIN album ON sa.album_id = album.id 
WHERE year != 2020;

SELECT collection.name FROM collection
JOIN trackcollection tc ON collection.id = tc.collection_id 
JOIN track ON tc.track_id = track.id 
JOIN album ON track.id = album.id
JOIN singeralbum sa ON album.id = sa.album_id 
JOIN singer ON sa.singer_id  = singer.id
WHERE singer.name = 'Сплин';
