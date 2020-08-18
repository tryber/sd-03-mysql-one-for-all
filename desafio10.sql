USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (usuario_id_param INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quant_cancoes INT;
SELECT COUNT(*) FROM historico_reproducoes WHERE usuario_id = usuario_id_param INTO quant_cancoes;
RETURN quant_cancoes;
END $$

DELIMITER ;
