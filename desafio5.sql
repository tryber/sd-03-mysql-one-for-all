CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        A.song AS cancao, COUNT(*) AS reproducoes
    FROM
        SpotifyClone.song_history AS SH
            INNER JOIN
        SpotifyClone.songs AS A ON A.id = SH.song_id
    GROUP BY SH.song_id
    ORDER BY reproducoes DESC , cancao ASC
    LIMIT 2;
    