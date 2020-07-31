USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON User
FOR EACH ROW
BEGIN
    DELETE FROM Reproduction_History WHERE user_id = OLD.id;
    DELETE FROM Following_Artists WHERE user_id = OLD.id;
END $$

DELIMITER ;
