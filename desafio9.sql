USE SpotifyClone;
DELIMITER $$ 
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
SELECT a.nome AS artista, ab.titulo AS album FROM albuns AS ab
JOIN artistas AS a
ON a.artista_id = ab.artista_id
WHERE a.nome = nome_artista
ORDER BY `album`;
END$$

DELIMITER ;
