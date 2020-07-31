USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(vari VARCHAR(255))
RETURNS INT READS SQL DATA
BEGIN
DECLARE n INT;
SELECT COUNT(*) INTO n FROM SpotifyClone.user_history AS uh
INNER JOIN SpotifyClone.user AS u
ON uh.user_id = u.user_id
WHERE user = vari;
RETURN n;
END $$

DELIMITER ;
