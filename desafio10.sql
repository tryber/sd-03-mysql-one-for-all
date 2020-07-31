DELIMITER $$
CREATE FUNCTION  quantidade_musicas_no_historico (id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE musicas INT ;
SELECT COUNT(*) FROM historico_reproducao hr WHERE hr.usuario_id = id INTO musicas;
RETURN musicas;
END $$
DELIMITER ;
