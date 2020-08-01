DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.user
  FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.follow WHERE user_id = OLD.id;
  DELETE FROM SpotifyClone.reproduction WHERE user_id = OLD.id;
END $$

DELIMITER ;
