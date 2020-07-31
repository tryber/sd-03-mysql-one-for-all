CREATE VIEW top_2_hits_do_momento AS
SELECT music as cancao, count(*) AS reproducoes FROM SpotifyClone.user_history AS us
INNER JOIN SpotifyClone.user AS u
ON u.user_id = us.user_id
INNER JOIN SpotifyClone.music AS m
ON m.music_id = us.music_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
limit 2
