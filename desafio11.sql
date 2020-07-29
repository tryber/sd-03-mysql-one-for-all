CREATE VIEW cancoes_premium AS
SELECT s.title AS `nome`, COUNT(rh.song_id) AS `reproducoes`
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.reproduction_history AS rh
ON s.id = rh.song_id
INNER JOIN SpotifyClone.users
ON users.id = rh.user_id AND users.plan_id IN (2, 3)
GROUP BY s.title
ORDER BY `nome`;
