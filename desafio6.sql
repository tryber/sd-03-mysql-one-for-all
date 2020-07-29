CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(plano.value_plan) AS 'faturamento_minimo',
        MAX(plano.value_plan) AS 'faturamento_maximo',
        ROUND(AVG(plano.value_plan), 2) AS 'faturamento_medio',
        SUM(plano.value_plan) AS 'faturamento_total'
    FROM
        SpotifyClone.plan AS plano
            INNER JOIN
        SpotifyClone.user AS usuario ON usuario.plan_id = plano.id;
                      
