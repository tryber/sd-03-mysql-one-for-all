USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nome VARCHAR(100))
BEGIN
SELECT nome AS artista, a.nome AS album
FROM album AS a
INNER JOIN artista AS art ON art.id = a.artista_id
AND art.nome = nome;
END $$

DELIMITER ;
