USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN name VARCHAR(45))
BEGIN
  SELECT
    (SELECT artist_name FROM SpotifyClone.artists WHERE albums.artist_id = artists.artist_id) AS artista,
    album_name AS album
  FROM SpotifyClone.albums
  WHERE albums.artist_id = (
    SELECT artist_id FROM SpotifyClone.artists WHERE artists.artist_name = name
  );
END $$

DELIMITER ;
