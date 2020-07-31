DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(30))
BEGIN
SELECT 
    *
FROM
    (SELECT 
        (SELECT 
                    name
                FROM
                    SpotifyClone.artists
                WHERE
                    id = artist_id) AS artista,
            name AS album
    FROM
        SpotifyClone.albuns
    ORDER BY artista) AS A
WHERE
    artista = artist_name;
END $$
DELIMITER ;
