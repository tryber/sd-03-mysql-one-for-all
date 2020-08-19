CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.nome AS 'usuario', c.nome_cancao AS 'nome'
    FROM
        usuarios AS u
            INNER JOIN
        historico_reproducoes AS h ON u.usuario_id = h.usuario_id
            INNER JOIN
        cancoes AS c ON h.cancao_id = c.cancao_id
    ORDER BY 1 , 2;
