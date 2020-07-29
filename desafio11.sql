CREATE VIEW cancoes_premium AS
    SELECT 
        C.nome AS nome, COUNT(H.cancao_id) AS reproducoes
    FROM
        SpotifyClone.historico AS H
            INNER JOIN
        SpotifyClone.cancoes AS C ON C.id = H.cancao_id
            INNER JOIN
        SpotifyClone.usuario AS U ON U.id = H.usuario_id
    WHERE
        U.plano_id IN (2 , 3)
    GROUP BY nome
    ORDER BY nome;
    