USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (user_id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade INT;
  SELECT COUNT(*) AS quantidade FROM historico_usuario
  WHERE usuario_id = user_id INTO quantidade;
  RETURN quantidade;
END $$
DELIMITER ;
