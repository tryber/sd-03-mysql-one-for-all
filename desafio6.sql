CREATE VIEW faturamento_atual AS
    SELECT 
        ROUND(MIN(plano.value_plan), 2) AS 'faturamento_minimo',
        ROUND(MAX(plano.value_plan), 2) AS 'faturamento_maximo',
        ROUND(AVG(plano.value_plan), 2) AS 'faturamento_medio',
        ROUND(SUM(plano.value_plan), 2) AS 'faturamento_total'
    FROM
        SpotifyClone.plan AS plano
            INNER JOIN
        SpotifyClone.user AS usuario ON usuario.plan_id = plano.id;
