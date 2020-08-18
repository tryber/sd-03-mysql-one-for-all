USE SpotifyClone;

CREATE VIEW top_3_artistas AS
    SELECT 
        a.nome AS 'artista', COUNT(s.artista_id) AS 'seguidores'
    FROM
        artistas AS a
            INNER JOIN
        seguindo_artista AS s ON a.artista_id = s.artista_id
    GROUP BY s.artista_id
    ORDER BY 2 DESC , 1
    LIMIT 3;
