create table peliculas(
    title char(255),
    summary char(255),
    release_year int,
    director_id char(255),
    min_duration int,
    min_age int,
    event_type int,
    FOREIGN KEY (director_id) REFERENCES director(director_name),
    primary key (title)
);
insert into peliculas (title, summary, release_year, director_id, event_type)
values(
        'Los Vengadores',
        'Pelicula de superheroes basada en Marvel Comics. Nick Fury director de SHIELD recluta a Tony Stark, Steve Rogers, Bruce Banner y Thor para forma un equipo y evitar que Loki, hermano de Thor, se apodere de la tierra.',
        1990,
        'Joss Whedon',
        0
    );
insert into peliculas (title, summary, release_year, director_id, event_type)
values(
        'Interestelar',
        'Pelicula de ciencia ficción, donde la humanidad lucha por sobrevivir. La pelicula cuenta una historia de un grupo de astronautas que viajan a traves de un agujero de gusano en busca de un nuevo hogar.',
        2014,
        'Christopher Nolan',
        0
    );
insert into peliculas (title, summary, release_year, director_id, event_type)
values(
        'El viaje de Chihiro',
        'Pelicula de animación japonesa. Es la historia de una niña de 12',
        2001,
        'Hayo Miyazaki',
        0
    );
insert into peliculas (title, summary, release_year, director_id, event_type)
values(
        'Parasitos',
        'Pelicula de drama, suspenso y humor negro. Toca temas como las diferencias sociales y vulnerabilidad del espiritu humano.',
        2019,
        'Bong Joon-ho',
        0
    );
insert into peliculas (title, summary, release_year, director_id, event_type)
values(
        'Mas alla de los sueños',
        'Pelicula de drama, narra una historia trágica de una familia, donde el padre va en busca de sus esposa al mas all á para recuperarla.',
        1998,
        'Vincent Ward',
        0
    );
-- ASD
insert into peliculas (title, min_duration, min_age, event_type)
values ('The walking dead', 49, 16, 1);
insert into peliculas (title, min_duration, min_age, event_type)
values(
        'Viaje a las estrellas: la serie original',
        80,
        12,
        1
    );
insert into peliculas (title, min_duration, min_age, event_type)
values ('Glow', 30, 16, 1);
insert into peliculas (title, min_duration, min_age, event_type)
values ('La casa de papel', 31, 18, 1);
insert into peliculas (title, min_duration, min_age, event_type)
values ('Friends', 23, 12, 1);
insert into peliculas (title, min_duration, min_age, event_type)
values ('Arrow', 170, 12, 1);
insert into peliculas (title, min_duration, min_age, event_type)
values ('The big bang theory', 279, 12, 1);
insert into peliculas (title, min_duration, min_age, event_type)
values ('Vikingos', 79, 18, 1);