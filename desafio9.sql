USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nome_artista VARCHAR(50))
BEGIN
SELECT a.nome AS 'artista', al.nome_album AS 'album'
FROM albuns AS al
INNER JOIN artistas AS a ON al.artista_id = a.artista_id
WHERE nome = nome_artista;
END $$

DELIMITER ;
