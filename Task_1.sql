CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) UNIQUE NOT NULL 
);

CREATE TABLE IF NOT EXISTS Singer(
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreSinger  (
	genre_id INTEGER REFERENCES Genre(id),
	singer_id INTEGER REFERENCES Singer(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, singer_id)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	year INTEGER
);

CREATE TABLE IF NOT EXISTS SingerAlbum (
	singer_id INTEGER REFERENCES Singer(id),
	album_id INTEGER REFERENCES Album(id),
	CONSTRAINT pk_2 PRIMARY KEY (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES Album(id),
	name VARCHAR(80) NOT NULL,
	duration NUMERIC(4,2)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS TrackCollection (
	track_id INTEGER REFERENCES Track(id),
	collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pk_3 PRIMARY KEY (track_id, collection_id)
);

INSERT INTO genre(id, name)
VALUES(1, 'Рок');

INSERT INTO genre(id, name)
VALUES(2, 'Рэп');

INSERT INTO genre(id, name)
VALUES(3, 'Поп музыка');

INSERT INTO singer(name)
VALUES('Сплин');

INSERT INTO singer(name)
VALUES('Король и шут');

INSERT INTO singer(name)
VALUES('Максим');

INSERT INTO singer(name)
VALUES('Сергей Лазарев');

INSERT INTO singer(name)
VALUES('Баста');

INSERT INTO genresinger
VALUES(1, 1);

INSERT INTO genresinger
VALUES(1, 2);

INSERT INTO genresinger
VALUES(2, 5);

INSERT INTO genresinger
VALUES(3, 3);

INSERT INTO genresinger
VALUES(3, 4);

INSERT INTO album(name, year)
VALUES('Гранатовый альбом', 1998);

INSERT INTO album(name, year)
VALUES('Акустический альбом', 1998);

INSERT INTO album(name, year)
VALUES('Полигамность', 2018);

INSERT INTO album(name, year)
VALUES('Я не боюсь', 2019);

INSERT INTO album(name, year)
VALUES('Баста 1', 2006);

INSERT INTO singeralbum
VALUES(1, 1);

INSERT INTO singeralbum
VALUES(2, 2);

INSERT INTO singeralbum
VALUES(3, 3);

INSERT INTO singeralbum
VALUES(4, 4);

INSERT INTO singeralbum
VALUES(5, 5);

INSERT INTO track(album_id, name, duration)
VALUES(1, 'Выхода нет', 3);

INSERT INTO track(album_id, name, duration)
VALUES(2, 'Кукла колдуна', 4.5);

INSERT INTO track(album_id, name, duration)
VALUES(3, 'Абонент не доступен', 3.2);

INSERT INTO track(album_id, name, duration)
VALUES(4, 'Влюбленные', 3.16);

INSERT INTO track(album_id, name, duration)
VALUES(5, 'Моя игра', 5.5);

INSERT INTO track(album_id, name, duration)
VALUES(2, 'Прыгну со скалы', 3.6);

INSERT INTO track(album_id, name, duration)
VALUES(1, 'Весь этот бред', 3);

INSERT INTO collection(name, year)
VALUES('Рок музыка', 2001);

INSERT INTO collection(name, year)
VALUES('Песни 2000-х', 2010);

INSERT INTO collection(name, year)
VALUES('Сборник хитов поп музыки', 2010);

INSERT INTO collection(name, year)
VALUES('Лучшие хиты', 2019);

INSERT INTO trackcollection
VALUES(1, 1);

INSERT INTO trackcollection
VALUES(2, 1);

INSERT INTO trackcollection
VALUES(6, 1);

INSERT INTO trackcollection
VALUES(7, 1);

INSERT INTO trackcollection
VALUES(1, 2);

INSERT INTO trackcollection
VALUES(2, 2);

INSERT INTO trackcollection
VALUES(5, 2);

INSERT INTO trackcollection
VALUES(3, 3);

INSERT INTO trackcollection
VALUES(4, 3);

INSERT INTO trackcollection
VALUES(4, 3);

INSERT INTO trackcollection
VALUES(1, 4);

INSERT INTO trackcollection
VALUES(2, 4);

INSERT INTO trackcollection
VALUES(5, 4);

INSERT INTO trackcollection
VALUES(3, 4);















