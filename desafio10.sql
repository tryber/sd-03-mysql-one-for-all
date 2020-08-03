DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE counter INT;
SELECT
COUNT(*)
FROM SpotifyClone.`history`
WHERE `history`.user_id = user_id INTO counter;
RETURN counter;
END $$
DELIMITER ;
