--ACT1 Crea un Artista nuevo--

INSERT INTO artists(ArtistId, name) VALUES ('276','Maychol Jackson')

--ACT2 Crear un Album del artista que elegiste Artista--

INSERT INTO albums(ArtistId, Title, AlbumId) VALUES ('276', 'Thriller' ,'348')

--ACT3 Agregar Tres Canciones al Album que creaste del Artista--

INSERT INTO tracks (name, MediaTypeId,Milliseconds,UnitPrice) 
VALUES ( 'Billie Jean' ,4, 158000, 1.00), ('Beat it',4,159000,1.99),('Thriller',4,160000,2.00)