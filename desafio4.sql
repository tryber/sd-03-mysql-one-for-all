CREATE VIEW top_3_artistas AS 
SELECT ARTISTA AS `artista`,
seguidores AS `seguidores`
FROM ARTISTA AS A
INNER JOIN SEGUIDORES AS S
ORDER BY `seguidores` DESC, `artista` ASC;
