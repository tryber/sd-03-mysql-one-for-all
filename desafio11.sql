CREATE VIEW cancoes_premium AS SELECT 
    song.name AS nome, COUNT(user.id) AS reproducoes
FROM
    SpotifyClone.play_history
        INNER JOIN
    songs AS song ON song.id = song_id
        INNER JOIN
    users AS user ON user_id = user.id AND user.plan_id <> 1
GROUP BY nome
ORDER BY nome;
