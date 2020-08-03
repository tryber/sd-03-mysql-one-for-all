CREATE VIEW top_3_artistas AS
SELECT a.`name` AS artista, COUNT(f.artist_id) AS seguidores
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.`following` AS f
ON a.id = f.artist_id
GROUP BY (f.artist_id)
ORDER BY seguidores DESC, artista ASC
LIMIT 3;
