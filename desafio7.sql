    CREATE VIEW `perfil_artistas` 
    AS SELECT a.artista_name AS  `artista`,
al.album_name AS `album`, 
COUNT(sa.artista_id) As `seguidores`
FROM seguindo_artista sa
INNER JOIN artista a
ON a.artista_id = sa.artista_id
INNER JOIN album AS al
ON a.artista_id = al.artista_id
GROUP BY `album`, `artista`
ORDER BY 3 DESC, 1 ASC, 2 ASC
