USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nome VARCHAR(50))
BEGIN
SELECT
CONCAT(primeiro_nome, ' ', segundo_nome) AS artista,
CONCAT(primeiro_nome, ' ', segundo_nome) AS album,
FROM SpotifyClone.tabela AS A
INNER JOIN SpotifyClone.tabela AS AL
WHERE artista = nome;
END $$
DELIMITER;
CALL albuns_do_artista('Walter Phoenix');
