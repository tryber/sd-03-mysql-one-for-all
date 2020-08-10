CREATE VIEW faturamento_atual AS
    SELECT 
        ROUND(MIN(price), 2) AS faturamento_minimo,
        ROUND(MAX(price), 2) AS faturamento_maximo,
        ROUND(AVG(price), 2) AS faturamento_medio,
        ROUND(SUM(price), 2) AS faturamento_total
    FROM
        (SELECT 
            name,
                (SELECT 
                        price
                    FROM
                        SpotifyClone.plans
                    WHERE
                        id = A.plan_id) AS price
        FROM
            SpotifyClone.users AS A) AS planos;
