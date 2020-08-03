USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(30))
BEGIN
  SELECT a.artista AS artista, ab.album AS album
  FROM SpotifyClone.albuns AS ab
  JOIN SpotifyClone.artistas AS a
  ON a.artista_id = ab.artista_id
  WHERE a.artista = nome
  ORDER BY album;
END $$
DELIMITER ;
