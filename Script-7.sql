1
SELECT genre_name, Count(GenreArtists.artist_id) FROM Genre
    JOIN GenreArtists ON Genre.genre_id  = GenreArtists.genre_id 
    GROUP BY genre_name ORDER by genre_name;

2
SELECT album_year, Count(track_id) as st FROM Albums
    JOIN Tracks ON Albums.album_id = Tracks.album_id 
    GROUP BY album_year 
    HAVING album_year in (2019, 2020);

3
SELECT album_name, Avg(track_duration) as at FROM Albums
    JOIN Tracks ON Albums.album_id = Tracks.album_id 
    GROUP BY album_name ORDER BY album_name;

4
SELECT artist_name FROM Artists
    WHERE artist_id NOT In(
    SELECT DISTINCT artist_id FROM ArtistAlbums
    JOIN Albums ON ArtistAlbums.album_id = Albums.album_id 
    WHERE Albums.album_year = 2020);

5
SELECT mixalbum_name FROM MixAlbums
    JOIN MixAlbumTracks ON MixAlbums.mixalbum_id = MixAlbumTracks.mixalbum_id 
    JOIN Tracks ON MixAlbumTracks.track_id = Tracks.track_id
    JOIN Albums ON Tracks.album_id  = Albums.album_id
    JOIN ArtistAlbums ON Albums.album_id  = ArtistAlbums.album_id
    JOIN Artists ON ArtistAlbums.artist_id = Artists.artist_id 
    WHERE artist_name ='ABBA';

6
SELECT DISTINCT album_name FROM Albums 
    JOIN ArtistAlbums ON Albums.album_id = ArtistAlbums.album_id
    WHERE artist_id in 
    (SELECT artist_id FROM GenreArtists
    GROUP BY artist_id HAVING count(genre_id) > 1);

7
SELECT track_name FROM Tracks 
    WHERE track_id NOT In 
    (SELECT DISTINCT track_id FROM MixAlbumTracks);

8
SELECT artist_name FROM Artists
	JOIN ArtistAlbums ON Artists.artist_id  = ArtistAlbums.artist_id
	JOIN Albums ON ArtistAlbums.album_id = Albums.album_id 
	JOIN Tracks ON Albums.album_id = Tracks.album_id 
	WHERE track_duration =
	(SELECT Min(track_duration) FROM Tracks);
9
SELECT album_name FROM Albums
	JOIN Tracks ON Albums.album_id = Tracks.album_id 
	GROUP BY album_name
	HAVING count(track_id) = 
	(SELECT count(track_id) as ct FROM Tracks
	GROUP BY album_id ORDER BY ct LIMIT 1);
