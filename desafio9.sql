DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN name_user VARCHAR(40))
BEGIN
SELECT
ART.primeiro_nome AS artista,
ALB.primeiro_nome AS album
FROM albuns AS al
INNER JOIN artista AS ar
ON ar.id_artista = al.artista_id_artista
AND ar.primeiro_nome = name_user;
END $$
DELIMITER ;
