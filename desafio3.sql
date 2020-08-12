CREATE VIEW history_reproducao_users AS
    SELECT 
        user.name AS 'user', songs.name AS 'name'
    FROM
        SpotifyClone.history AS history
            INNER JOIN
        SpotifyClone.user AS user ON user.id = history.user_id
            INNER JOIN
        SpotifyClone.songs AS songs ON songs.id = history.song_id
    ORDER BY 1 , 2;
