USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (user_id_param INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qty INT;
SELECT COUNT(*) FROM historico WHERE usuario_id = user_id_param INTO qty;
RETURN qty;
END $$

DELIMITER ;
