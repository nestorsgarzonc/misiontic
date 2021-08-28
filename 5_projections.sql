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