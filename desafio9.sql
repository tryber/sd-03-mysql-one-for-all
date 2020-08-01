USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artist_name VARCHAR(100))
BEGIN
SELECT artist_name AS 'artista', album.name AS 'album'
FROM album AS album
INNER JOIN artist AS artista ON artista.id = album.artist_id
AND artista.name = artist_name;
END

$$ DELIMITER ;
