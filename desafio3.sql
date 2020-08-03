CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome AS usuario, c.nome AS nome
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuario AS u ON u.id = h.usuario_id
INNER JOIN SpotifyClone.cancoes AS c ON c.id = h.cancao_id
ORDER BY usuario, nome;
