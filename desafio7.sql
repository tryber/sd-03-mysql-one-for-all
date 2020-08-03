CREATE VIEW perfil_artistas AS
SELECT art.nome AS artista, a.nome AS album, COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS a ON a.artista_id = art.id
INNER JOIN SpotifyClone.seguindo_artista AS s ON s.artista_id = art.id
GROUP BY (a.id)
ORDER BY seguidores DESC, artista, album;
