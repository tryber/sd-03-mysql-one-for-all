CREATE VIEW perfil_artistas AS
    SELECT 
        A.nome AS artista,
        AB.nome AS album,
        COUNT(SA.artista_id) AS seguidores
    FROM
        SpotifyClone.artista AS A
            INNER JOIN
        SpotifyClone.album AS AB ON AB.artista_id = A.id
            INNER JOIN
        SpotifyClone.seguindo_artista AS SA ON SA.artista_id = A.id
    GROUP BY AB.id
    ORDER BY seguidores DESC , artista , album;
