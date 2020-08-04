CREATE VIEW top_3_artistas AS
SELECT a.nome AS artista, COUNT(usa.usuario_id) AS seguidores FROM usuarios_seguem_artistas as usa
JOIN artistas AS a
ON usa.artista_id = a.artista_id
GROUP BY usa.artista_id
ORDER BY `seguidores` DESC
LIMIT 3;
