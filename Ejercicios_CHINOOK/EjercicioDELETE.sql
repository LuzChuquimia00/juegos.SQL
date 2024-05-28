--ACTIVIDAD: Borrar todo lo que habias creado de los album, artista y caciones--
DELETE FROM tracks WHERE AlbumId IS NULL;
DELETE FROM albums WHERE ArtistId = 276;
DELETE FROM artists WHERE ArtistId = 276;