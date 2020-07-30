-- 10. Crie uma function chamada de quantidade_musicas_no_historico que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de um usuário. Ao receber o código identificador da usuária, exiba a quantidade de canções em seu histórico de reprodução.

USE spotifyclone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_pessoa INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_tracks INT;
SELECT COUNT(*) FROM track_history
WHERE user_id = id_pessoa INTO total_tracks;
RETURN total_tracks;
END $$
DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
