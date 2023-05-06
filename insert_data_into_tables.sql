insert into genre(id, name)
values
	(1, 'Metal'),
	(2, 'Rock'),
	(3, 'Pop'),
	(4, 'Rap'),
	(5, 'Electronic');

insert into artist(id, name, genre_id)
values
	(1, 'Metallica', 1),
	(2, 'Gojira', 1),
	(3, 'Billie Eilish', 3),
	(4, 'Britney Spears', 3),
	(5, 'Scorpions', 2),
	(6, 'AC/DC', 2),
	(7, 'Eminem', 4),
	(8, 'Daft punk', 5);

insert into album(id, name, artist_id, release_year)
values
	(1, 'Metallica', 1, 1991),
	(2, 'Fortitude', 2, 2021),
	(3, 'Happier Than Ever', 3, 2021),
	(4, 'Blackout', 4, 2007),
	(5, 'Comeblack', 5, 2011),
	(6, 'Black Ice', 6, 2008),
	(7, 'Encore', 7, 2004),
	(8, 'Discovery', 8, 2001);

insert into track(id, name, album_id, length_per_minutes)
	values
	(1, 'Enter Sandman', 1, 5.31),
	(2, 'Sad But True', 1, 5.23),
	(3, 'Fortitude', 2, 2.07),
	(4, 'Hold On', 2, 5.30),
	(5, 'Getting Older', 3, 4.04),
	(6, 'Gimme More', 4, 4.11),
	(7, 'The Zoo', 5, 5.38),
	(8, 'Wind of Change', 5, 5.08),
	(9, 'Rock N Roll Train', 6, 4.21),
	(10, 'War Machine', 6, 3.09),
	(11, 'Curtains Up', 7, 0.46),
	(12, 'Evil Deeds', 7, 4.19),
	(13, 'One More Time', 8, 5.20),
	(14, 'Aerodynamic', 8, 3.32),
	(15, 'Superheroes', 8, 3.57);

insert into playlist(id, name, release_year)
	values
	(1, 'Kickass Metal', 2022),
	(2, 'Mix Pop', 2022),
	(3, 'Oldschool Metal', 2010),
	(4, 'Rock N Metal', 2010),
	(5, 'Hard Rock', 2013),
	(6, 'Rap', 2014),
	(7, 'Electronic Mix', 2018),
	(8, 'Running music', 2023);
	
create table if not exists playlist_tracks(
	playlist_id INTEGER not null references playlist(id),
	track_id INTEGER not null references track(id)
);

insert into playlist_tracks(playlist_id, track_id)
	values
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(2, 5),
	(2, 6),
	(3, 1),
	(3, 2),
	(4, 1),
	(4, 2),
	(4, 3),
	(4, 4),
	(4, 7),
	(4, 8),
	(4, 9),
	(4, 10),
	(5, 7),
	(5, 8),
	(5, 9),
	(5, 10),
	(6, 11),
	(6, 12),
	(7, 13),
	(7, 14),
	(7, 15),
	(8, 13),
	(8, 14),
	(8, 15),
	(8, 1),
	(8, 2),
	(8, 3),
	(8, 4);
	