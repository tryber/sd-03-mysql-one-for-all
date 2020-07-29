USE SpotifyClone;

DELIMITER $$ 

CREATE PROCEDURE albuns_do_artista (IN artist_name VARCHAR(100)) 
BEGIN
  SELECT artist_name AS artista,
    albums.album AS album
  FROM albums AS albums
  INNER JOIN artists AS artists
  ON artists.artist_id = albums.artist_id
  WHERE artists.artist = artist_name;
END $$ 

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
