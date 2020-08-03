USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.usuario
  FOR EACH ROW
BEGIN
  DELETE FROM historico WHERE usuario_id = L.id;
  DELETE FROM artists WHERE usuario_id = L.id;
END $$

DELIMITER ;
