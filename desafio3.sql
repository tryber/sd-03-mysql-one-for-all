CREATE VIEW historico_reproducao_usuarios AS
SELECT us.usuario `usuario`,
hr.cancoes_id `nome`
FROM SpotifyClone.usuario us
INNER JOIN SpotifyClone.historico_de_reproducoes hr ON us.usuario_id = hr.usuario_id
ORDER BY `usuario`, `nome`;
