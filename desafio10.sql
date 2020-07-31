USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_id VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE cancoes_amount INT;
SELECT COUNT(*) FROM historico_de_reproducoes hr
INNER JOIN usuario ur ON hr.usuario_id = ur.usuario_id
WHERE ur.usuario_id = usuario_id INTO cancoes_amount;
RETURN cancoes_amount;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
