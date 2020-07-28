DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.user
  FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.follow AS follow
  WHERE follow.user_id = OLD.id;
  DELETE FROM SpotifyClone.reproduction AS repr
  WHERE repr.user_id = OLD.id;
END; $$
DELIMITER $$
