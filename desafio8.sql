USE SpotifyClone; 
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM historico_reproducao WHERE OLD.usuario_id= usuario_id;
DELETE FROM seguindo_artista WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
