USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_singer (IN name_singer VARCHAR(100))
BEGIN
SELECT name_singer AS 'singer', album.name AS 'album'
FROM album AS album
INNER JOIN singer AS singer ON singer.id = album.singer_id
AND singer.name = name_singer;
END $$

DELIMITER ;
