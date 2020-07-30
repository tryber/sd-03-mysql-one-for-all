CREATE VIEW top_3_artistas AS 
SELECT A.primeiro_nome AS artista,
COUNT(S.usuário_id) AS seguidores
FROM SpotifyClone.seguindo_artistas AS S
INNER JOIN SpotifyClone.artista AS A
ON S.id_artista = A.id_artista
GROUP BY (S.id_artista)
ORDER BY seguidores DESC, artista
LIMIT 3;
