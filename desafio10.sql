USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtde_musicas INT;
SELECT COUNT(cancao_id)
FROM historico_reproducao
WHERE usuario_id = id_usuario
GROUP BY usuario_id 
INTO qtde_musicas;
RETURN qtde_musicas;
END $$

DELIMITER ;
