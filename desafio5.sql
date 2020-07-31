CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        (SELECT song_name FROM SpotifyClone.songs WHERE songs.song_id = users_reproduction_history.song_id) AS cancao,
        COUNT(*) AS reproducoes
    FROM SpotifyClone.users_reproduction_history
    GROUP BY song_id
    ORDER BY reproducoes DESC, cancao LIMIT 2;
