USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_history (user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quant INT;
SELECT 
    COUNT(*)
FROM
    history
WHERE
    user_id = user_id INTO quant;
RETURN quant;
END $$

DELIMITER ;
