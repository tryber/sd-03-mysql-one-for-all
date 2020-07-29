USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_name VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE music_report INT;
  SELECT COUNT(*) FROM users AS users
  INNER JOIN songs_history AS sh
  ON users.user_id = sh.user_id
  WHERE users.user = user_name
  INTO music_report;
  RETURN music_report;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico('Bill');
