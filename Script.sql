CREATE TABLE IF NOT EXISTS Genre (
    id SERIAL PRIMARY KEY,
    name_genre VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Singers(
    id SERIAL PRIMARY KEY,
    name_singer VARCHAR(50) NOT NULL,
    album TEXT NOT NULL 
);

CREATE TABLE IF NOT EXISTS Genre_Singer(
    genre_id INTEGER REFERENCES Genre(id),
    singer_id INTEGER REFERENCES Singers(id),
    CONSTRAINT pk PRIMARY KEY (genre_id, singer_id)
);

CREATE TABLE IF NOT EXISTS Albums(
    id SERIAL PRIMARY KEY,
    name_album TEXT UNIQUE,
    release_year INT NOT NULL,
    name_singer VARCHAR(60) NOT NULL
);


CREATE TABLE IF NOT EXISTS Album_Singer(
    id_album INTEGER REFERENCES Albums(id),
    id_singer INTEGER REFERENCES Singers(id),
    CONSTRAINT pk_as PRIMARY KEY (id_album, id_singer)
);

CREATE TABLE IF NOT EXISTS Tracks(
    id SERIAL PRIMARY KEY,
    name_track TEXT NOT NULL,
    length_track TIME NOT NULL,
    album TEXT REFERENCES Albums(name_album)
);

CREATE TABLE IF NOT EXISTS Collections(
    id SERIAL PRIMARY KEY,
    name_collection TEXT NOT NULL,
    release_year INT NOT NULL,
    track TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Track_Collection(
    id_track INTEGER REFERENCES Tracks(id),
    id_collection INTEGER REFERENCES Collections(id),
    CONSTRAINT pk_tc PRIMARY KEY (id_track, id_collection)
);


       

       
       
       

