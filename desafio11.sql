CREATE VIEW cancoes_premium AS
    SELECT 
        son.song nome, COUNT(hist.song_id) reproducoes
    FROM
        SpotifyClone.songs son,
        SpotifyClone.song_history hist,
        SpotifyClone.users us
    WHERE
        hist.song_id = son.id
            AND us.id = hist.user_id
            AND us.plan_id IN (2 , 3)
    GROUP BY hist.song_id
    ORDER BY nome;
