USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON user_table
    FOR EACH ROW
BEGIN
    DELETE FROM user_follows
    WHERE usuario = OLD.user_id;

    DELETE FROM user_history
    WHERE usuario = OLD.user_id;
END; $$
DELIMITER ;
