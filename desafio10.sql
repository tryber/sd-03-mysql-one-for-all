DELIMITER $$
CREATE FUNCTION  quantidade_musicas_no_historico (nome VARCHAR(35))
RETURNS INT READS SQL DATA
BEGIN
DECLARE musicas INT ;
SELECT COUNT(*)
FROM historico_reproducao hr 
INNER JOIN usuarios us
ON us.usuario_id = hr.usuario_id
WHERE
us.usuario = nome;
RETURN musicas;
END $$
DELIMITER ;
