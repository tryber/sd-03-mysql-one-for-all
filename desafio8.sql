USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_user_delete
BEFORE DELETE ON user
FOR EACH ROW
BEGIN
    DELETE FROM history WHERE user_id = OLD.id;
DELETE FROM follow_singer 
WHERE
    user_id = OLD.id;
END $$

DELIMITER ;
