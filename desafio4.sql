CREATE VIEW top_3_artistas AS
SELECT art.nome AS artista, COUNT(user.nome) AS seguidores
FROM artistas AS art
INNER JOIN usuarios AS user
INNER JOIN seguindo_artistas 
ON seguindo_artistas.usuario_id = user.id AND seguindo_artistas.artista_id = art.id
GROUP BY artista
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
