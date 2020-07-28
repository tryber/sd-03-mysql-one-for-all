USE SpotifyClone;
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete 
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM historico_reproducao 
WHERE usuario_id = OLD.id;
DELETE FROM usuario_seguindo_artista
WHERE usuario_id = OLD.id;
END; $$

DELIMITER ;