CREATE VIEW top_2_hits_do_momento AS
SELECT c.nome AS cancao, COUNT(h.cancao_id) reproducoes
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.cancoes AS c ON h.cancao_id = c.id
GROUP BY (h.cancao_id)
ORDER BY reproducoes DESC, cancao
LIMIT 2;
