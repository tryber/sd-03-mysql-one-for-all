DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE on SpotifyClone.users FOR EACH ROW BEGIN
DELETE FROM SpotifyClone.artists_followers af
WHERE af.user_id = OLD.user_id;
DELETE FROM SpotifyClone.songs_history sh
WHERE sh.user_id = OLD.user_id;
END $$

DELIMITER;
