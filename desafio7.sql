CREATE VIEW perfil_artistas AS
SELECT a.artista AS artista, ab.album AS album, COUNT(*) AS seguidores
FROM SpotifyClone.seguidores AS s
JOIN SpotifyClone.artistas AS a
ON a.artista_id = s.artista_id
JOIN SpotifyClone.albuns AS ab
ON a.artista_id = ab.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
