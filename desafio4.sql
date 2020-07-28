CREATE VIEW top_3_artistas AS
SELECT
a.nome_artista AS artista,
COUNT(usa.artista_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.usuario_seguindo_artista AS usa ON a.id = usa.artista_id
GROUP BY a.id
ORDER BY seguidores DESC, artista
LIMIT 3;
