USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.users_artists
WHERE user_id = OLD.user_id;
DELETE FROM SpotifyClone.reproduction_history
WHERE user_id = OLD.user_id;
END; $$
DELIMITER ;
