USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE music_report INT;
  SELECT COUNT(*) FROM songs_history
  WHERE user_id = user_id
  INTO music_report;
  RETURN music_report;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico('Bill');
