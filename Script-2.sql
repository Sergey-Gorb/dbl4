create table if not exists Genre(
	genre_id serial primary key,
	genre_name varchar(50) not null
	);
	
create table if not exists Artists(
	artist_id serial primary key,
	artist_name varchar(30) not null
	);

create table if not exists GenreArtists(
        genre_id integer referrences Genre(genre_id),
	artist_id integer references Artists(artist_id),
        constraint pk primary key (genre_id, artist_id)
        );
        
create table if not exists Albums(
	album_id serial primary key,
	album_name varchar(40) not null,
	album_date integer not null,
	);

create table if not exists ArtistAlbums(
	artist_id integer references Artists(artist_id),
	album_id integer references Albums(album_id),
        constraint pk primary key (artist_id, album_id)
        );
        	
create table if not exists Tracks(
	track_id serial primary key,
	track_name varchar(40) not null,
	track_duration integer not null,
	album_id integer references Albums(album_id)
	);

create table if not exists MixAlbum(
        mixalbum_id serial primary key,
        mixalbum_name varchar(40) not null,
        mixalbum_year integer not null
        );

create table if not exist MixAlbumTracks(
        mixalbum_id integer references MixAlbums(mixalbum_id),
        track_id integer references Tracks(track_id),
        constraint pk primary key (mixalbum_id, track_id)
        )
