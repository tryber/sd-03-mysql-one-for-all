DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(vari INT)
RETURNS INT DETERMINISTIC
BEGIN
DECLARE n INT;
SELECT COUNT(*) INTO n FROM SpotifyClone.user_history AS uh
INNER JOIN SpotifyClone.user AS u
ON uh.user_id = u.user_id
WHERE u.user_id = vari;
RETURN n;
END $$

DELIMITER ;
