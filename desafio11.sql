CREATE VIEW cancoes_premium AS
SELECT 
c.nome_cancao AS nome,
COUNT(hr.cancao_id) AS reproducoes
FROM SpotifyClone.historico_reproducao AS hr
INNER JOIN SpotifyClone.cancoes AS c ON c.id = hr.cancao_id
INNER JOIN SpotifyClone.usuarios AS u ON u.id = hr.usuario_id
WHERE u.plano_id IN (2, 3)
GROUP BY c.id
ORDER BY nome;
