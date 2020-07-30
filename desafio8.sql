USE SpotifyClone; 
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuário
FOR EACH ROW
BEGIN
WHERE OLD.id
DELETE FROM nome_usuario
END;
DELIMITER $$ ;
