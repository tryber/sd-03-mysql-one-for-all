DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN n_artist VARCHAR(30))
BEGIN
SELECT
A.artist AS artista,
B.album  AS album
FROM SpotifyClone.albuns AS B
INNER JOIN SpotifyClone.artists AS A
ON A.id = B.artist_id
WHERE artist = n_artist ;
END $$
DELIMITER ;
