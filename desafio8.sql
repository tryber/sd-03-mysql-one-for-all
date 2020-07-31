USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON usuario
    FOR EACH ROW
BEGIN
    DELETE FROM historico_de_reproducoes
    WHERE usuario_id = OLD.usuario_id;
    DELETE FROM seguindo_artistas
    WHERE usuario_id = OLD.usuario_id;
END; $$
DELIMITER ;

DELETE FROM usuario WHERE usuario = 'Thati';

SELECT * FROM usuario;
SELECT * FROM historico_de_reproducoes;
SELECT * FROM seguindo_artistas;
