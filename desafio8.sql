USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON user_table
    FOR EACH ROW
BEGIN
    DELETE FROM user_follows
    WHERE user_table.user_id = user_follows.usuario;
    DELETE FROM user_history
    WHERE user_table.user_id = user_history.usuario;
END; $$
DELIMITER ;
