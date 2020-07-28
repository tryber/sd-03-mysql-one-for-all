USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (user_id_param INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quant INT;
SELECT COUNT(*) FROM history WHERE user_id = user_id_param INTO quant;
RETURN quant;
END $$

DELIMITER ;
