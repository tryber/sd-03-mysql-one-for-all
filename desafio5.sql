CREATE VIEW top_2_hits_do_momento AS 
SELECT 
    (SELECT 
            name
        FROM
            SpotifyClone.songs AS song
        WHERE
            song_id = song.id) AS cancao,
    (SELECT COUNT(song_id)) AS reproducoes
FROM
    SpotifyClone.play_history
GROUP BY song_id
ORDER BY reproducoes DESC , cancao LIMIT 2;
