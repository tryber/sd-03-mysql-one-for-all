USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(
IN name VARCHAR(255))
BEGIN
SELECT artist as artista, album as album
from SpotifyClone.artist a INNER JOIN SpotifyClone.album al
on a.artist_id = al.artist_id
WHERE artist = name;
END $$
DELIMITER ;
