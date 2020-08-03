CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.historico AS h
JOIN SpotifyClone.cancoes AS c
ON h.cancao_id = c.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
