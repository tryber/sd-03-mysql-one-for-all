USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usr_id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE counter INT;
      SELECT
        COUNT(*)
      FROM SpotifyClone.users_reproduction_history
      WHERE users_reproduction_history.user_id = usr_id INTO counter;
    RETURN counter;
END $$

DELIMITER ;
