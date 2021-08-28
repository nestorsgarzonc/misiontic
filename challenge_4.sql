DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS projections;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS director;

create table director(
    id int auto_increment primary key,
    director_name char(255),
    last_name char(255),
    nationality char(255)
);
create table peliculas(
    id int auto_increment primary key,
    title char(255),
    summary char(255),
    release_year int,
    director_id int,
    FOREIGN KEY (director_id) REFERENCES director(id)
);
create table events(
    id int auto_increment primary key,
    title char(255),
    min_duration int,
    min_age int
);
create table users(
    id int auto_increment primary key,
    user_id char(255),
    first_name char(255),
    last_name char(255),
    email char(255),
    cell_phone bigint,
    user_password char(255),
    birth_date datetime
);
create table projections(
    id int auto_increment primary key,
    movie_id int,
    event_id int,
    projection_date datetime,
    FOREIGN KEY (movie_id) REFERENCES peliculas(id),
    FOREIGN KEY (event_id) REFERENCES events(id)
);