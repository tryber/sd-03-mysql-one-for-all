USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
SELECT
ar.nome_artista AS artista,
al.nome_album AS album
FROM SpotifyClone.artistas AS ar
INNER JOIN albuns AS al ON ar.id = al.artista_id
WHERE ar.nome_artista = nome
ORDER BY album;
END $$

DELIMITER ;
