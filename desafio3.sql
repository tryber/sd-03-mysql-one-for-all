CREATE VIEW historico_reproducao_usuarios AS
SELECT us.usuario `usuario`,
ca.cancoes `nome`
FROM SpotifyClone.usuario us
INNER JOIN SpotifyClone.historico_de_reproducoes hr ON us.usuario_id = hr.usuario_id
INNER JOIN SpotifyClone.cancoes ca ON ca.cancoes_id = hr.cancoes_id
ORDER BY `usuario`, `nome`;
