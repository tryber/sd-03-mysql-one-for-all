USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(username VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE music_report INT;
  SELECT COUNT(*) FROM users users
  INNER JOIN songs_history sh
  ON users.user_id = sh.user_id
  WHERE users.user = username
  INTO music_report;
  RETURN music_report;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico('Bill');
