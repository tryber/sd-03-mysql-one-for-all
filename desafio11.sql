CREATE VIEW cancoes_premium AS
SELECT
(SELECT song FROM SpotifyClone.songs WHERE song_id = RH.song_id) AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.reproduction_history AS RH
WHERE user_id IN
(SELECT user_id FROM SpotifyClone.users WHERE id_plan IN
(SELECT id_plan FROM SpotifyClone.plan WHERE plan IN ('familiar', 'universitário')))
GROUP BY song_id
ORDER BY nome;
