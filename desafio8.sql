USE SpotifyClone; 
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuário
FOR EACH ROW
BEGIN
DELETE FROM historico_de_reproducoes WHERE OLD.id = usuário_id;
DELETE FROM seguindo_artistas WHERE usuário_id = OLD.id;
END $$
DELIMITER ;
