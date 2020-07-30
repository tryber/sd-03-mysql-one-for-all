USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nome VARCHAR(100))
BEGIN
SELECT
ART.primeiro_nome AS artista,
ALB.primeiro_nome AS album
FROM albuns AS ALB
INNER JOIN artista AS ART
ON ART.id_artista = ALB.artista_id_artista
AND ART.primeiro_nome = nome;
END $$

DELIMITER ;
