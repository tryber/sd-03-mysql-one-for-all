USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE songs INT;
  SELECT COUNT(cancao)
  FROM user_history
  WHERE user_history.usuario = user_id
  GROUP BY usuario
  INTO songs;
  RETURN songs;
END $$

DELIMITER ;
