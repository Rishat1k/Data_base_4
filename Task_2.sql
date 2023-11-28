SELECT name, duration FROM track
WHERE duration = (SELECT max(duration) FROM track);

SELECT name FROM track 
WHERE duration >= 3.5;

SELECT name FROM collection
WHERE year >= 2018 AND year <= 2020;

SELECT name FROM singer
WHERE name NOT LIKE '% %';

SELECT name FROM track
WHERE name LIKE 'my' OR name LIKE '%Моя%'