CREATE VIEW `top_3_artistas` 
AS SELECT a.artista_name AS `artista`, 
COUNT(sa.artista_id) As `seguidores`
FROM seguindo_artista sa
INNER JOIN artista a
ON a.artista_id = sa.artista_id
GROUP BY (sa.artista_id)
ORDER BY 2 DESC, 1
LIMIT 3
