USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista (nome varchar(50))
BEGIN
SELECT nome artista, albums.album album
FROM albums, artistas
WHERE artistas.artista_id = albums.artista_id AND artistas.nome_artista = nome;
END $$
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
