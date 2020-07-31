DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (user_name VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qnt_musicas_historico INT;
SELECT COUNT(*) FROM SpotifyClone.reproduction_history
WHERE user_id = (SELECT user_id FROM SpotifyClone.users WHERE name = 'Bill')
INTO qnt_musicas_historico;
RETURN qnt_musicas_historico;
END $$
DELIMITER ;
