USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON SpotifyClone.users
    FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.users_reproduction_history WHERE user_id = OLD.user_id;
    DELETE FROM SpotifyClone.artists_followed_by_users WHERE user_id = OLD.user_id;
END; $$
DELIMITER ;
