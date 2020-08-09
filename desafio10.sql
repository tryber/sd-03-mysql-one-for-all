DELIMITER $$
CREATE FUNCTION SpotifyClone.quantidade_musicas_no_historico(user_name VARCHAR(30)
) RETURNS int(11)
    READS SQL DATA
BEGIN
    DECLARE qt_song_history INT;
    SELECT COUNT(user_id) FROM SpotifyClone.song_history
    WHERE user_id = (
        SELECT id FROM SpotifyClone.users WHERE name LIKE 'bill')
        INTO qt_song_history;
RETURN qt_song_history;
END $$
DELIMITER ;
