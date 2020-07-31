CREATE VIEW faturamento_atual AS 
SELECT 
    MIN(price) AS 'faturamento_minimo',
    MAX(price) AS 'faturamento_maximo',
    (SELECT 
            ROUND(AVG(media), 2)
        FROM
            (SELECT 
                (SELECT 
                            price
                        FROM
                            SpotifyClone.plans
                        WHERE
                            id = plan_id) AS media
            FROM
                SpotifyClone.users) AS A) AS 'faturamento_medio',
    SUM(price) AS 'faturamento_total'
FROM
    SpotifyClone.plans AS planos;
