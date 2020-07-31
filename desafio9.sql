USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(
IN artista VARCHAR(100)
)
BEGIN
SELECT ar.artista 'artista',
al.album 'album'
FROM artista ar
INNER JOIN album al
ON ar.artista_id = al.artista_id
WHERE ar.artista = artista;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
