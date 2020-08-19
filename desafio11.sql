CREATE VIEW cancoes_premium AS
    SELECT 
        c.nome_cancao AS 'nome', COUNT(h.cancao_id) AS 'reproducoes'
    FROM
        cancoes AS c
            INNER JOIN
        historico_reproducoes AS h ON c.cancao_id = h.cancao_id
            INNER JOIN
        usuarios AS u ON h.usuario_id = u.usuario_id
    WHERE
        u.plano_id IN (2 , 3)
    GROUP BY c.nome_cancao
    ORDER BY 1;
