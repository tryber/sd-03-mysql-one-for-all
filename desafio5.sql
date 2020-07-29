CREATE VIEW top_2_hits_do_momento AS
SELECT C.nome_cancao  AS cancao, COUNT(HR.id_cancao) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes AS HR
INNER JOIN SpotifyClone.cancoes AS C
ON HR.id_cancao = C.id_cancao
GROUP BY (HR.id_cancao)
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
