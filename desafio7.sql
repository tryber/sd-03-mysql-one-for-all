CREATE VIEW perfil_artistas AS
SELECT artista.name AS 'artista', album.name AS 'album', COUNT(seguindo_artista.artista_id) AS 'seguidores'
FROM SpotifyClone.artist AS artista
INNER JOIN SpotifyClone.album AS album ON album.artist_id = artista.id
INNER JOIN SpotifyClone.following_artist AS seguindo_artista ON seguindo_artista.artist_id = artista.id
GROUP BY (album.id) ORDER BY 3 DESC, 1, 2;
