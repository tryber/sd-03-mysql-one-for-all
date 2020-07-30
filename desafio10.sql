USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION  quantidade_musicas_no_historico (nome_id INT)
RETURNS INT READS SQL DATA

BEGIN
DECLARE quantidade_historico INT ;
SELECT COUNT(*)
FROM historico_de_reproducoes
WHERE
usuário_id = nome_id INTO quantidade_historico;

RETURN quantidade_historico;
END $$

DELIMITER ;
