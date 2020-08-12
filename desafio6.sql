CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(plan.valor_plan) AS 'faturamento_minimo',
        MAX(plan.valor_plan) AS 'faturamento_maximo',
        ROUND(AVG(plan.valor_plan), 2) AS 'faturamento_medio',
        SUM(plan.valor_plan) AS 'faturamento_total'
    FROM
        SpotifyClone.plan AS plan
            INNER JOIN
        SpotifyClone.user AS user ON user.plan_id = plan.id;
