DELIMITER $$

CREATE PROCEDURE albuns_ do_artista (IN artist_name VARCHAR(100))
BEGIN
SELECT artist_name AS artista,
  albums.album AS album
FROM SpotifyClone.albums AS albums
  INNER JOIN SpotifyClone.artists AS artists ON artists.artist = artist_name;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
