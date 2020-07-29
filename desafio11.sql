CREATE VIEW cancoes_premium AS
SELECT songs.song AS nome,
  COUNT(*) AS reproducoes
FROM SpotifyClone.songs songs
  INNER JOIN SpotifyClone.songs_history sh ON sh.song_id = songs.song_id
WHERE EXISTS (
    SELECT *
    FROM SpotifyClone.users users
    WHERE users.user_id = sh.user_id
      AND users.plan_id IN (
        SELECT plans.plan_id
        FROM SpotifyClone.plans plans
        WHERE plans.plan = 'familiar'
          OR plans.plan = 'universitário'
      )
  )
GROUP BY nome
ORDER BY nome;
