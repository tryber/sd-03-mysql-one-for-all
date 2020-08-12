CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        songs.name AS 'cancao',
        COUNT(history.song_id) 'reproducoes'
    FROM
        SpotifyClone.history AS history
            INNER JOIN
        SpotifyClone.songs AS songs ON history.song_id = songs.id
    GROUP BY (history.song_id)
    ORDER BY 2 DESC , 1
    LIMIT 2;
