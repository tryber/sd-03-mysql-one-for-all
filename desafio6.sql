CREATE VIEW faturamento_atual AS
    SELECT 
        MAX(P.valor_plano) AS `faturamento_maximo`,
        ROUND(AVG(P.valor_plano), 2) AS `faturamento_medio`,
        MIN(P.valor_plano) AS `faturamento_minimo`,
        SUM(P.valor_plano) AS `faturamento_total`
    FROM
        SpotifyClone.plano AS P
            INNER JOIN
        SpotifyClone.usuario AS u ON u.plano_id = P.id;
