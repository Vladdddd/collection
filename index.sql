CREATE TABLE disks(
    disk_id integer(100) NOT NULL primary key,
    disk_type VARCHAR(32) NOT NULL
) engine = INNODB;

CREATE TABLE collection(
    coll_id integer(100) NOT NULL primary key,
    disk_name VARCHAR(32) NOT NULL,
    disk_id integer(100) NOT NULL,
    FOREIGN KEY(disk_id) REFERENCES disks(disk_id)
) engine = INNODB;

CREATE TABLE films( 
    film_id integer(100) NOT NULL primary key, 
    film_name VARCHAR(32) NOT NULL, 
    film_director VARCHAR(32) NOT NULL, 
    film_cast VARCHAR(32) NOT NULL, 
    film_genre VARCHAR(32) NOT NULL 
) engine = INNODB;

CREATE TABLE musics( 
    music_id integer(100) NOT NULL primary key, 
    music_author VARCHAR(32) NOT NULL, 
    music_album VARCHAR(32) NOT NULL, 
    music_name VARCHAR(32) NOT NULL, 
    music_genre VARCHAR(32) NOT NULL,
    music_release_year integer(100) NOT NULL
) engine = INNODB;

CREATE TABLE coll_film(
    coll_id integer(100) NOT NULL,
    film_id integer(100) NOT NULL,
    PRIMARY KEY(coll_id, film_id),
    FOREIGN KEY(coll_id) REFERENCES collection(coll_id),
    FOREIGN KEY(film_id) REFERENCES films(film_id)
) engine = INNODB;

CREATE TABLE coll_music(
    coll_id integer(100) NOT NULL,
    music_id integer(100) NOT NULL,
    PRIMARY KEY(coll_id, music_id),
    FOREIGN KEY(coll_id) REFERENCES collection(coll_id),
    FOREIGN KEY(music_id) REFERENCES musics(music_id)
) engine = INNODB;