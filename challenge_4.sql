DROP TABLE IF EXISTS projections;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS director;
-- ASD
create table director(
    director_name char(255),
    nationality char(255),
    primary key (director_name)
);
insert into director (director_name, nationality)
values ('Hayo Miyazaki', 'japones');
insert into director (director_name, nationality)
values ('Joss Whedon', 'estadounidense');
insert into director (director_name, nationality)
values ('Christopher Nolan', 'estadounidense');
insert into director (director_name, nationality)
values ('Bong Joon-ho', 'coreano');
insert into director (director_name, nationality)
values ('Vincent Ward', 'neozelandes');
-- ASD
create table peliculas(
    title char(255),
    summary char(255),
    release_year int,
    director_id char(255),
    FOREIGN KEY (director_id) REFERENCES director(director_name),
    primary key (title)
);
insert into peliculas (title, summary, release_year, director_id)
values(
        'Los Vengadores',
        'Pelicula de superheroes basada en Marvel Comics. Nick Fury director de SHIELD recluta a Tony Stark, Steve Rogers, Bruce Banner y Thor para forma un equipo y evitar que Loki, hermano de Thor, se apodere de la tierra.',
        1990,
        'Joss Whedon'
    );
insert into peliculas (title, summary, release_year, director_id)
values(
        'Interestelar',
        'Pelicula de ciencia ficción, donde la humanidad lucha por sobrevivir. La pelicula cuenta una historia de un grupo de astronautas que viajan a traves de un agujero de gusano en busca de un nuevo hogar.',
        2014,
        'Christopher Nolan'
    );
insert into peliculas (title, summary, release_year, director_id)
values(
        'El viaje de Chihiro',
        'Pelicula de animación japonesa. Es la historia de una niña de 12',
        2001,
        'Hayo Miyazaki'
    );
insert into peliculas (title, summary, release_year, director_id)
values(
        'Parasitos',
        'Pelicula de drama, suspenso y humor negro. Toca temas como las diferencias sociales y vulnerabilidad del espiritu humano.',
        2019,
        'Bong Joon-ho'
    );
insert into peliculas (title, summary, release_year, director_id)
values(
        'Mas alla de los sueños',
        'Pelicula de drama, narra una historia trágica de una familia, donde el padre va en busca de sus esposa al mas all á para recuperarla.',
        1998,
        'Vincent Ward'
    );
-- ASD
create table events(
    title char(255),
    min_duration int,
    min_age int,
    primary key (title)
);
insert into events (title, min_duration, min_age)
values ('The walking dead', 49, 16);
insert into events (title, min_duration, min_age)
values (
        'Viaje a las estrellas: la serie original',
        80,
        12
    );
insert into events (title, min_duration, min_age)
values ('Glow', 30, 16);
insert into events (title, min_duration, min_age)
values ('La casa de papel', 31, 18);
insert into events (title, min_duration, min_age)
values ('Friends', 23, 12);
insert into events (title, min_duration, min_age)
values ('Arrow', 170, 12);
insert into events (title, min_duration, min_age)
values ('The big bang theory', 279, 12);
insert into events (title, min_duration, min_age)
values ('Vikingos', 79, 18);
-- ASD
create table users(
    user_id char(255),
    first_name char(255),
    last_name char(255),
    email char(255),
    cell_phone bigint,
    user_password char(255),
    birth_date datetime,
    primary key (user_id)
);
insert into users (
        user_id,
        first_name,
        last_name,
        email,
        cell_phone,
        user_password,
        birth_date
    )
values (
        'lucky',
        'Pedro',
        'Perez',
        'as@gmail.com',
        352184631,
        'password :v',
        '2000-05-10'
    );
insert into users (
        user_id,
        first_name,
        last_name,
        email,
        cell_phone,
        user_password,
        birth_date
    )
values (
        'malopez',
        'Maria',
        'Lopez',
        'as@gmail.com',
        352184631,
        'password :v',
        '2000-05-10'
    );
insert into users (
        user_id,
        first_name,
        last_name,
        email,
        cell_phone,
        user_password,
        birth_date
    )
values (
        'diva',
        'Ana',
        'Diaz',
        'as@gmail.com',
        352184631,
        'password :v',
        '2000-05-10'
    );
insert into users (
        user_id,
        first_name,
        last_name,
        email,
        cell_phone,
        user_password,
        birth_date
    )
values (
        'dreamer',
        'Luis',
        'Rojas',
        'as@gmail.com',
        352184631,
        'password :v',
        '2000-05-10'
    );
insert into users (
        user_id,
        first_name,
        last_name,
        email,
        cell_phone,
        user_password,
        birth_date
    )
values (
        'ninja',
        'Andres',
        'Cruz',
        'as@gmail.com',
        352184631,
        'password :v',
        '2000-05-10'
    );
insert into users (
        user_id,
        first_name,
        last_name,
        email,
        cell_phone,
        user_password,
        birth_date
    )
values (
        'neon',
        'Nelson',
        'Ruiz',
        'as@gmail.com',
        352184631,
        'password :v',
        '2000-05-10'
    );
insert into users (
        user_id,
        first_name,
        last_name,
        email,
        cell_phone,
        user_password,
        birth_date
    )
values (
        'rose',
        'Claudia',
        'Mendez',
        'as@gmail.com',
        352184631,
        'password :v',
        '2000-05-10'
    );
insert into users (
        user_id,
        first_name,
        last_name,
        email,
        cell_phone,
        user_password,
        birth_date
    )
values (
        'green',
        'Jorge',
        'Rodriguez',
        'as@gmail.com',
        352184631,
        'password :v',
        '2000-05-10'
    );
-- ASD
create table projections(
    id int auto_increment,
    user_id char(255),
    movie_id char(255),
    event_id char(255),
    projection_date datetime,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (movie_id) REFERENCES peliculas(title),
    FOREIGN KEY (event_id) REFERENCES events(title),
    primary key(id)
);
insert into projections (user_id, movie_id, projection_date)
values (
        'lucky',
        'Los Vengadores',
        '2017-10-25 20:00:00'
    );
insert into projections (user_id, movie_id, projection_date)
values ('lucky', 'Parasitos', '2019-03-15 18:30:00');
insert into projections (user_id, event_id, projection_date)
values (
        'lucky',
        'La casa de papel',
        '2019-05-20 20:30:00'
    );
insert into projections (user_id, movie_id, projection_date)
values (
        'malopez',
        'Los Vengadores',
        '2018-05-20 20:30:00'
    );
insert into projections (user_id, event_id, projection_date)
values (
        'malopez',
        'La casa de papel',
        '2020-01-20 20:30:00'
    );
insert into projections (user_id, movie_id, projection_date)
values ('diva', 'Interestelar', '2019-05-20 20:30:00');
insert into projections (user_id, movie_id, projection_date)
values (
        'diva',
        'El viaje de Chihiro',
        '2018-06-22 21:30:00'
    );
insert into projections (user_id, event_id, projection_date)
values (
        'diva',
        'The walking dead',
        '2020-03-17 15:30:20'
    );
insert into projections (user_id, event_id, projection_date)
values (
        'dreamer',
        'The walking dead',
        '2020-03-17 15:30:20'
    );
insert into projections (user_id, event_id, projection_date)
values (
        'dreamer',
        'Viaje a las estrellas: la serie original',
        '2020-04-10 18:30:20'
    );
insert into projections (user_id, event_id, projection_date)
values ('ninja', 'Glow', '2020-02-17 20:30:20');
insert into projections (user_id, event_id, projection_date)
values (
        'ninja',
        'La casa de papel',
        '2020-02-20 16:30:20'
    );
insert into projections (user_id, event_id, projection_date)
values ('ninja', 'Arrow', '2020-03-27 18:30:20');
insert into projections (user_id, event_id, projection_date)
values ('rose', 'Friends', '2020-03-20 21:30:20');
insert into projections (user_id, movie_id, projection_date)
values ('green', 'Interestelar', '2020-01-10 17:30:20');
insert into projections (user_id, movie_id, projection_date)
values ('green', 'Parasitos', '2020-02-15 20:30:20');
insert into projections (user_id, movie_id, projection_date)
values (
        'green',
        'Mas alla de los sueños',
        '2020-03-17 18:30:20'
    );
-- QUERYS
SELECT title
from peliculas
ORDER BY title ASC;
SELECT title,
    summary,
    release_year
from peliculas
WHERE release_year > 2000;
SELECT movies
FROM peliculas
WHERE director_id = 'Vincent Ward';
SELECT event_id as eventos,
    movie_id as peliculas
FROM projections
WHERE user_id = 'lucky';
SELECT us.user_id,
    us.first_name,
    us.last_name
from users as us,
    projections as proj
where us.user_id = proj.user_id
    AND movie_id = 'Interestelar'
order by us.user_id;
SELECT COUNT(*)
from peliculas
WHERE release_year > 2000;