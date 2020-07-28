CREATE VIEW perfil_artistas AS
SELECT
artist.name AS artista,
album.name AS album,
(SELECT COUNT(*) FROM SpotifyClone.follow AS follow WHERE artist.id = follow.artist_id) AS seguidores
FROM SpotifyClone.album AS album
INNER JOIN SpotifyClone.artist AS artist
ON artist.id = album.artist_id
ORDER BY seguidores DESC, artista, album;
