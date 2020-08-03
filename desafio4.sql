CREATE VIEW top_3_artistas AS
SELECT a.nome AS artista, COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.seguindo_artista AS s
INNER JOIN SpotifyClone.artista AS a ON s.artista_id = a.id
GROUP BY (s.artista_id)
ORDER BY seguidores DESC, artista
LIMIT 3;
