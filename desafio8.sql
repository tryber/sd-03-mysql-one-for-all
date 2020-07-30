USE SpotifyClone; 
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuário
FOR EACH ROW
BEGIN
DELETE FROM usuário WHERE usuário.id = OLD.id
DELETE FROM nome_usuario
END;
DELIMITER $$ ;
