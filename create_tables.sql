create table if not exists genre (
	id serial primary key,
	name VARCHAR(60) not null
);

create table if not exists artist (
	id serial primary key,
	name VARCHAR(60) not null,
	genre_id INTEGER not null references genre(id)
);

create table if not exists album (
	id serial primary key,
	name VARCHAR(60) not null,
	artist_id INTEGER not null references artist(id),
	release_year text not null
);

create table if not exists track (
	id serial primary key,
	name VARCHAR(60) not null,
	album_id INTEGER not null references album(id),
	length_per_minutes text not null
);