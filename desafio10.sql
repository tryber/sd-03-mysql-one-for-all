USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE counter INT;
SELECT
COUNT(*)
FROM SpotifyClone.historico
WHERE usuario_id = id INTO counter;
RETURN counter;
END $$
DELIMITER ;
