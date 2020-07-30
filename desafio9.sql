-- 9. Crie uma procedure chamada albuns_do_artista que recebe como parâmetro o nome de uma pessoa artista e em retorno deve exibir as seguintes colunas:

-- O nome da pessoa artista, com o alias "artista".
-- O nome do álbum, com o alias "album".

-- Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.

-- Confirme a execução correta da procedure, chamando-a e passando o nome igual a "Walter Phoenix".
USE spotifyclone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(15))
BEGIN
	SELECT A.artist_name as artista, B.album_name as album
    FROM albums AS B
    JOIN artists as A ON B.artist_id = A.id
    WHERE artist_name = nome_artista
    ORDER by album;
END $$
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
