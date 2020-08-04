USE SpotifyClone
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE cancoes_total INT;
SELECT COUNT(cancao_id) INTO cancoes_total
FROM historicos_usuarios
WHERE usuario_id = id
GROUP BY usuario_id;
RETURN cancoes_total;
END $$

DELIMITER ;
