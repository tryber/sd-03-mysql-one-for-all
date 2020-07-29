CREATE VIEW top_3_artistas AS
    SELECT 
        A.nome AS artista,
        COUNT(SA.artista_id) AS seguidores
    FROM
        SpotifyClone.seguindo_artista AS SA
            INNER JOIN
        SpotifyClone.artista AS A ON SA.artista_id = A.id
    GROUP BY (SA.artista_id)
    ORDER BY seguidores DESC , artista
    LIMIT 3;
    