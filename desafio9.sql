DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN n_artist VARCHAR(30))
BEGIN
SELECT
A.artist AS artista,
B.album  AS album
FROM SpotifyClone.albuns AS B
INNER JOIN SpotifyClone.artists AS A
ON A.artist = B.artist_id
WHERE artist ;
END $$
DELIMITER ;
