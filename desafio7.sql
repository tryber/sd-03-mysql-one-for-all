CREATE VIEW perfil_artistas AS
SELECT 
CONCAT(A.primeiro_nome) AS artista,
CONCAT(AL.primeiro_nome) AS album,
COUNT(SE.id_artista) AS seguidores FROM SpotifyClone.artista AS A
INNER JOIN SpotifyClone.albuns AS AL ON AL.artista_id_artista = A.id_artista
INNER JOIN SpotifyClone.seguindo_artistas AS SE ON SE.id_artista = A.id_artista
group by AL.id_albun
ORDER BY seguidores DESC, artista, album;
