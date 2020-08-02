USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quant INT;
SELECT COUNT(song_id)
FROM reproduction_history
WHERE reproduction_history.user_id = user_id INTO quant;
RETURN quant;
END $$

DELIMITER ;