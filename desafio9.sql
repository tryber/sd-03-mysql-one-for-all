USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nome_artista VARCHAR(100))
BEGIN
SELECT nome_artista AS artista, AB.nome AS album
FROM album AS AB
INNER JOIN artista AS A ON A.id = AB.artista_id
AND A.nome = nome_artista;
END $$

DELIMITER ;
