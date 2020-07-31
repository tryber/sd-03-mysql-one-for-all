DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN name_user VARCHAR(40))
BEGIN
SELECT
ar.artista_name AS artista,
al.album_name AS album
FROM album AS al
INNER JOIN artista AS ar
ON ar.artista_id = al.artista_id
AND ar.artista_name = name_user;
END $$
DELIMITER ;
