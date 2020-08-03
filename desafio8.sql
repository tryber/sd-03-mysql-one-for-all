DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.`user`
  FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.following
  WHERE user_id = OLD.id;
  DELETE FROM SpotifyClone.`history`
  WHERE user_id = OLD.id;
END; $$
DELIMITER $$
