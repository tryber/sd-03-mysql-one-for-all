USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(50))
BEGIN
SELECT Artist.name AS `artista`, Albuns.title AS `album`
FROM Albuns
INNER JOIN Artist
ON Artist.id = Albuns.artist_id AND Artist.name = artist_name;
END $$

DELIMITER ;
