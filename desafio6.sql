USE SpotifyClone;

CREATE VIEW faturamento_atual AS
    SELECT 
        ROUND(MIN(valor_plano), 2) AS 'faturamento_minimo',
        ROUND(MAX(valor_plano), 2) AS 'faturamento_maximo',
        ROUND(AVG(valor_plano), 2) AS 'faturamento_medio',
        ROUND(SUM(valor_plano), 2) AS 'faturamento_total'
    FROM
        planos
            INNER JOIN
        usuarios AS usuario ON usuario.plano_id = planos.plano_id;

/*
SELECT 
    ROUND(MIN(valor_plano), 2) AS 'faturamento_minimo',
    ROUND(MAX(valor_plano), 2) AS 'faturamento_maximo',
    ROUND(AVG(valor_plano), 2) AS 'faturamento_medio',
    ROUND(SUM(valor_plano), 2) AS 'faturamento_total'
FROM
    (SELECT 
        (SELECT 
                    valor_plano
                FROM
                    planos
                WHERE
                    planos.plano_id = usuarios.plano_id) AS valor_plano
    FROM
        usuarios) AS A;
*/
