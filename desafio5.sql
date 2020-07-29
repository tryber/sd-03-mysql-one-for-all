CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        C.nome AS cancao, COUNT(H.cancao_id) AS reproducoes
    FROM
        SpotifyClone.historico AS H
            INNER JOIN
        SpotifyClone.cancoes AS C ON H.cancao_id = C.id
    GROUP BY (H.cancao_id)
    ORDER BY reproducoes DESC , cancao
    LIMIT 2;
    