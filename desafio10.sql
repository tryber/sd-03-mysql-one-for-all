USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (name INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE histo INT;
SELECT COUNT(usu.usuario_id) FROM historico_de_reproducoes histrep, usuarios usu
WHERE histrep.usuario_id = usu.usuario_id AND usu.usuario = "Bill"
INTO histo;
RETURN histo;
END $$

DELIMITER ;
