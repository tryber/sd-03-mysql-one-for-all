CREATE VIEW top_3_artistas AS
SELECT a.artista AS artista, COUNT(*) AS seguidores
FROM SpotifyClone.seguidores AS s
JOIN SpotifyClone.artistas AS a
ON a.artista_id = s.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
