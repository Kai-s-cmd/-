select name, release_year from album
where release_year >= 2018;


select name, length_per_minutes  from track
where  length_per_minutes = (
	select max (length_per_minutes)
	from track
);

select name, length_per_minutes  from track
where  length_per_minutes >= 3.30;

SELECT name, release_year FROM playlist
WHERE release_year between 2018 and 2020;

select name from artist
where name not like '% %';

select name from track
where name like '%мой%' or name like '%my%';