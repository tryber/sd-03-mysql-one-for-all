CREATE VIEW cancoes_premium AS
SELECT
  (SELECT song_name FROM SpotifyClone.songs WHERE songs.song_id = users_reproduction_history.song_id) AS nome,
  COUNT(*) AS reproducoes
FROM SpotifyClone.users_reproduction_history
WHERE users_reproduction_history.user_id = (
  SELECT user_id
  FROM SpotifyClone.users
  WHERE users.user_id = users_reproduction_history.user_id AND users.plan_id IN (2, 3)
)
GROUP BY song_id
ORDER BY nome;
