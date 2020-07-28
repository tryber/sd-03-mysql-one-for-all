CREATE VIEW top_3_artistas AS
SELECT artista.name AS 'artista', COUNT(seguindo_artista.artist_id) AS 'seguidores'
FROM SpotifyClone.following_artist AS seguindo_artista
INNER JOIN SpotifyClone.artist AS artista ON seguindo_artista.artist_id = artista.id
GROUP BY (seguindo_artista.artist_id)
ORDER BY 2 DESC, 1
LIMIT 3;
