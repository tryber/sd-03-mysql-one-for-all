CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(pl.valor_plano), 2) `faturamento_minimo`,
ROUND(MAX(pl.valor_plano), 2) `faturamento_maximo`,
ROUND(AVG(pl.valor_plano), 2) `faturamento_medio`,
ROUND(SUM(pl.valor_plano), 2) `faturamento_total`
FROM SpotifyClone.plano pl
INNER JOIN SpotifyClone.usuario us ON pl.plano_id = us.plano_id;
