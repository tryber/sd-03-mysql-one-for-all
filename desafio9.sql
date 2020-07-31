DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nome_artista VARCHAR(30))
BEGIN
SELECT
A.artist AS artista,
AL.album  AS album
FROM SpotifyClone.albuns AS AL
INNER JOIN SpotifyClone.artists AS A
ON A.artist_id = AL.artist_id
WHERE artist = nome_artista;
END $$
DELIMITER ;
