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