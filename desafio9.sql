USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nome_artista VARCHAR(100))
  BEGIN
    SELECT nome_artista AS artista, A.nome AS album
    FROM album AS A
  INNER JOIN artista AS B ON B.id = A.artista_id
  AND B.nome = nome_artista;
  END $$
DELIMITER ;
