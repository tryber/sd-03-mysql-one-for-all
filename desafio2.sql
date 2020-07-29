CREATE VIEW estatisticas_musicais AS 
SELECT  COUNT(C.nome_cancao)  AS cancoes,
COUNT(A.id_artista)  AS `artistas`,
COUNT(AL.id_albun) AS `albuns`
FROM SpotifyClone.cancoes AS C
INNER JOIN SpotifyClone.artista AS A
INNER JOIN SpotifyClone.albuns AS AL;
