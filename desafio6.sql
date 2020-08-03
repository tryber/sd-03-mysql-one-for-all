CREATE VIEW faturamento_atual AS
  SELECT 
    MAX(A.valor_plano) AS `faturamento_maximo`,
    ROUND(AVG(A.valor_plano), 2) AS `faturamento_medio`,
    MIN(A.valor_plano) AS `faturamento_minimo`,
    SUM(A.valor_plano) AS `faturamento_total`
  FROM
    SpotifyClone.plano AS A
      INNER JOIN
    SpotifyClone.usuario AS B ON B.plano_id = A.id;
