CREATE VIEW cancoes_premium AS
SELECT ca.cancoes `nome`,
COUNT(hr.usuario_id) `reproducoes`
FROM SpotifyClone.cancoes ca
INNER JOIN SpotifyClone.historico_de_reproducoes hr ON ca.cancoes_id = hr.cancoes_id
INNER JOIN SpotifyClone.usuario us ON hr.usuario_id = us.usuario_id
INNER JOIN SpotifyClone.plano pl ON us.plano_id = pl.plano_id
WHERE pl.plano = 'familiar' OR pl.plano = 'universitário'
GROUP BY `nome`
ORDER BY `nome`;
