USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd INT;
SELECT COUNT(song_id)
FROM Reproduction_History
WHERE Reproduction_History.user_id = user_id INTO qtd;
RETURN qtd;
END $$

DELIMITER ;
