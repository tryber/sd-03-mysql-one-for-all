USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(50))
BEGIN
SELECT artists.name AS `artista`, albuns.title AS `album`
FROM albuns
INNER JOIN artists
ON artists.id = albuns.artist_id AND `artista` = artist_name;
END $$

DELIMITER ;
