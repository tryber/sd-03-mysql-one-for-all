CREATE VIEW perfil_artistas AS
SELECT 
a.nome AS artista,
ab.titulo AS album,
COUNT(usa.artista_id) AS seguidores
FROM artistas AS a 
JOIN albuns AS ab
ON ab.artista_id = a.artista_id
JOIN usuarios_seguem_artistas AS usa
ON usa.artista_id = a.artista_id
GROUP BY ab.album_id
ORDER BY seguidores DESC , artista , album;
