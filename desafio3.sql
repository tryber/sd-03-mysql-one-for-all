CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.nome_usuario AS usuario,
c.nome_cancao AS nome
FROM SpotifyClone.historico_reproducao AS h
INNER JOIN SpotifyClone.usuarios AS u ON u.id = h.usuario_id
INNER JOIN SpotifyClone.cancoes AS c ON c.id = h.cancao_id
ORDER BY usuario, nome;
