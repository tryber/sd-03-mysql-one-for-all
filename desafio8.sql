USE SpotifyClone; 
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON usuário
FOR EACH ROW
BEGIN
DELETE FROM usuário
WHERE usuario_id = OLD.id
END;
DELIMITER $$ ;
