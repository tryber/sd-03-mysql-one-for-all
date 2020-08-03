CREATE VIEW perfil_artistas AS
SELECT artist.`name` AS artista, album.`name` AS album, COUNT(f.artist_id) AS seguidores
FROM artist
INNER JOIN album ON album.artist_id = artist.id
INNER JOIN `following` AS f ON artist.id = f.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;