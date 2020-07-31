USE SpotifyClone;

DELIMITER $$ 
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON user
FOR EACH ROW
BEGIN
DELETE FROM user_follow 
where user_id = OLD.user_id;
DELETE FROM user_history
where user_id = OLD.user_id;


END; $$

DELIMITER ;
