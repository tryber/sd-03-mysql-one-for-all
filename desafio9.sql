USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nome VARCHAR(100))
BEGIN
  SELECT art.nome AS artista, alb.nome AS album
  FROM albuns AS alb
  INNER JOIN artistas AS art
  ON art.id = alb.artista_id
  WHERE art.nome = nome
  ORDER BY `album`;
END $$
DELIMITER ;
