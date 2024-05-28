--ACTIVIDAD: Modificar las tres canciones para completar o modificar--
UPDATE artists
SET name = 'Michael Jackson' --se cambio el nombre del ArtistId--
WHERE ArtistId = '276';

UPDATE tracks
SET AlbumId = 348 --se le agrego a los discos que tiene null un AlbumId--
WHERE TrackId >= 3504; 