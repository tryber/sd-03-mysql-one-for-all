CREATE VIEW faturamento_atual AS
  SELECT FORMAT(MIN(up.valor), 2) AS faturamento_minimo,
  FORMAT(MAX(up.valor), 2) AS faturamento_maximo,
  FORMAT(ROUND(AVG(up.valor), 1), 2) AS faturamento_medio,
  FORMAT(SUM(up.valor), 2) AS faturamento_total
  FROM SpotifyClone.user_table ut
  INNER JOIN SpotifyClone.user_plan up
  ON ut.plano = up.plano_id;
