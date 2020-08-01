DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(varia INT)
RETURNS INT DETERMINISTIC
BEGIN
DECLARE n INT;
SELECT COUNT(*) INTO n FROM SpotifyClone.user_history AS uh
INNER JOIN SpotifyClone.user AS u
ON uh.user_id = u.user_id
WHERE u.user_id = varia;
RETURN n;
END $$

DELIMITER ;
