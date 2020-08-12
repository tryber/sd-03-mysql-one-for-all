CREATE VIEW songs_premium AS
    SELECT 
        songs.name AS 'name',
        COUNT(history.song_id) AS 'reproducoes'
    FROM
        SpotifyClone.history AS history
            INNER JOIN
        SpotifyClone.songs AS songs ON songs.id = history.song_id
            INNER JOIN
        SpotifyClone.user AS user ON user.id = history.user_id
    WHERE
        user.plan_id IN (2 , 3)
    GROUP BY (songs.name)
    ORDER BY 1;
