DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(
    user_name VARCHAR(30)
)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE qt_song_history INT;
    SELECT COUNT(user_id) FROM SpotifyClone.play_history
    WHERE user_id LIKE (
        SELECT name FROM SpotifyClone.users WHERE name LIKE user_name)
        INTO qt_song_history;
RETURN qt_song_history;
END $$
