CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        U.nome AS usuario, C.nome AS nome
    FROM
        SpotifyClone.historico AS H
            INNER JOIN
        SpotifyClone.usuario AS U ON U.id = H.usuario_id
            INNER JOIN
        SpotifyClone.cancoes AS C ON C.id = H.cancao_id
    ORDER BY usuario ASC , nome;
