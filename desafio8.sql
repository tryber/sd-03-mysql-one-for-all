USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON user
FOR EACH ROW
BEGIN 
	DELETE FROM history WHERE user_id = OLD.id;
    DELETE FROM following_artist WHERE user_id = OLD.id;
END $$

DELIMITER ;
