CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome, COUNT(*) AS reproducoes
FROM SpotifyClone.historico AS h
JOIN SpotifyClone.cancoes AS c
ON h.cancao_id = c.cancao_id
WHERE h.usuario_id IN (SELECT usuario_id FROM SpotifyClone.usuarios WHERE plano_id IN (2, 3))
GROUP BY cancao
ORDER BY cancao;
