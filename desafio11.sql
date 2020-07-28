CREATE VIEW cancoes_premium AS
SELECT
song.name AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.song AS song
INNER JOIN SpotifyClone.reproduction AS repr
ON repr.song_id = song.id
WHERE EXISTS (
  SELECT * FROM SpotifyClone.user AS user
  WHERE user.id = repr.user_id AND user.plan_id IN (
    SELECT plan.id FROM SpotifyClone.plan AS plan
    WHERE plan.type = 'familiar' OR plan.type = 'universitário'
  )
)
GROUP BY nome
ORDER BY nome;
