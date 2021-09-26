INSERT INTO Genre (genre_name)
VALUES
    ('Rock'),
    ('Pop'),
    ('Piano classic'),
    ('Folk'),
    ('Jazz');

INSERT INTO Artists (artist_name)
VALUES
    ('Queen'),
    ('Guns and roses'),
    ('ABBA'),
    ('Denis Mazuev'),
    ('Nicolay Lugansky'),
    ('Flowers'),
    ('Miles Davis'),
    ('Duke Ellington');

INSERT INTO GenreArtists (genre_id, artist_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 4),
    (3, 5),
    (4, 6),
    (5, 7),
    (5, 8)
    (2, 6);

INSERT INTO Albums (album_name, album_date)
VALUES
    ('«Bohemian Rhapsody»', 2018),
    ('Chinese Democracy', 2008),
    ('Voyage', 2021),
    ('Number Ones', 2008),
    ('Rhapsody', 2008),
    ('Unknown Rachmaninoff', 2007),
    ('The Carnegie Hall Concert', 2008),
    ('The Lost Concert', 2000),
    ('Jazz Profiles', 2008),
    ('Leizt: Piano Worlks', 2011),
    ('May flowers', 2019),
    ('Summer Night', 2020),
    ('Moon Light', 2021);

INSERT INTO ArtistAlbums (artist_id, album_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (3, 4),
    (5, 10),
    (6, 11),
    (4, 6),
    (7, 8),
    (8, 9)
    (6, 12),
    (6, 13);

INSERT INTO Tracks (track_name, track_duration, album_id)
VALUES
    ('Bohemian Rhapsod'», 355, 1),
    ('Keep Yourself Alive', 226, 1),
    ('Chinese Democracy', 283, 2),
    ('Better', 298, 2),
    ('I Still Have Faith in You', 309, 3),
    ('Mamma Mia', 215, 4),
    ('Money, Money, Money', 185, 4),
    ('Sonata in B minor', 898, 7),
    ('Pianosonata No 7 in B flat major', 476, 7),
    ('Round Mifnight', 356, 8),
    ('Pharaoh s Dance', 1203, 8),
    ('Caravan', 357, 9),
    ('Satin Doll', 175, 9),
    ('Sonetto 123 del Petrarca', 287, 10),
    ('Vaises oubllees', 175, 10),
    ('The Daisies', 257, 11),
    ('The Dandelions', 170, 11)
    ('Red', 150,12)
    ('Blue See', 190 12)
    ('my Long Night', 212, 13)
    ('Moon', 167, 13);

INSERT INTO "MixAlbums" (mixalbum_name, mixalbum_year)
VALUES
    ('BestMix No 1', 2017),
    ('BestMix No 2', 2018),
    ('BestMix No 3', 2019),
    ('BestMix No 4', 2020),
    ('BestMix No 5', 2021);

INSERT INTO "MixAlbumTracks" (mixalbum_id, track_id)
VALUES
    (1, 1),
    (1, 5),
    (1, 9),
    (1, 13),
    (2, 17),
    (2, 4),
    (2, 8),
    (2, 12),
    (3, 16),
    (3, 3),
    (3, 7),
    (3, 11),
    (4, 15),
    (4, 2),
    (4, 6),
    (4, 10),
    (5, 14),
    (5, 3),
    (5, 9),
    (5, 15);


    
