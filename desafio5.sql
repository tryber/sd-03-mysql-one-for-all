CREATE VIEW  top_2_hits_do_momento AS
SELECT
S.title AS `cancao`, COUNT(H.song_id) AS `reproducoes`
FROM
SpotifyClone.Songs AS S
INNER JOIN
SpotifyClone.Reproduction_History AS H
ON
S.id = H.song_id
GROUP BY
`cancao`
ORDER BY
`reproducoes` DESC, `cancao` LIMIT 2;
