USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN name VARCHAR(20))
BEGIN
  SELECT art.nome AS artista,
  alb.nome AS album
  FROM artist_table art
  INNER JOIN album_table alb
  ON art.artist_id = alb.artista
  WHERE alb.nome = name;
END $$
DELIMITER ;
