CREATE VIEW cancoes_premium AS
SELECT
S.title AS `nome`, COUNT(H.song_id) AS `reproducoes`
FROM
SpotifyClone.Songs AS S
INNER JOIN
SpotifyClone.Reproduction_History AS H
ON
S.id = H.song_id
INNER JOIN
SpotifyClone.User
ON
User.id = H.user_id AND User.plan_id IN (2, 3)
GROUP BY
S.title
ORDER BY
`nome`;
