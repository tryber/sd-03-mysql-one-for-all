DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(userId INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qnt_of_musics INT;
  SELECT COUNT(*) FROM SpotifyClone.user AS user
  INNER JOIN SpotifyClone.reproduction AS repr
  ON user.id = repr.user_id
  WHERE user.id = userId
  INTO qnt_of_musics;
  RETURN qnt_of_musics;
END $$
DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
