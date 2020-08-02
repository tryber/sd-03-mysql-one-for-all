CREATE VIEW cancoes_premium AS
SELECT * FROM(
    SELECT
    (SELECT
     name FROM SpotifyClone.songs
        WHERE id = song_id
    ) AS nome,
    (SELECT 
        COUNT(user_id) FROM SpotifyClone.users
        WHERE user_id = id AND plan_id NOT IN (1)
    ) AS reproducoes FROM SpotifyClone.play_history
GROUP BY nome
ORDER BY nome
) AS A WHERE reproducoes IS NOT NULL;
