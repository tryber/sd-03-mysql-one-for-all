CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS usuario, c.cancao AS nome
FROM SpotifyClone.historico AS h
JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario_id
JOIN SpotifyClone.cancoes AS c
ON c.cancao_id = h.cancao_id
ORDER BY usuario, nome;
