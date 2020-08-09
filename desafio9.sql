USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN nome_artista VARCHAR(30))
BEGIN
SELECT * FROM
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
        ) AS A
    WHERE artista = artist_name
    ORDER BY album;
END $$
DELIMITER ;