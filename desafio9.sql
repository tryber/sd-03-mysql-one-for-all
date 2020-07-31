DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(30))
BEGIN
  SELECT
  artist_name AS artista,
  album.name AS album
  FROM SpotifyClone.album AS album
  INNER JOIN SpotifyClone.artist AS artist
  ON artist.id = album.artist_id
  WHERE artist.name = artist_name;
END $$
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
