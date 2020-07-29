CREATE VIEW estatisticas_musicais AS 
SELECT  COUNT(C.id_cancao)  AS cancoes,
(SELECT COUNT(A.id_artista) FROM SpotifyClone.artista AS A) AS `artistas`,
(SELECT COUNT(AL.id_albun) FROM SpotifyClone.albuns AS AL) AS `albuns`
FROM SpotifyClone.cancoes AS C; 
