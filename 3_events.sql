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