CREATE VIEW perfil_artistas AS
SELECT art.nome AS artista, alb.nome AS album, COUNT(art.nome) AS seguidores
FROM albuns AS alb
INNER JOIN artistas AS art
ON art.id = alb.artista_id
INNER JOIN seguindo_artistas AS sa
ON sa.artista_id = art.id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
