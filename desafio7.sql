CREATE VIEW perfil_artistas AS
SELECT 
ar.nome_artista AS artista,
al.nome_album AS album,
(SELECT COUNT(usa.artista_id)
FROM SpotifyClone.usuario_seguindo_artista AS usa
WHERE usa.artista_id = ar.id) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al ON al.artista_id = ar.id
ORDER BY seguidores DESC, artista, album;
