CREATE VIEW top_3_artistas AS
SELECT
A.name AS `artista`, COUNT(F.user_id) AS `seguidores`
FROM
SpotifyClone.Artist AS A
INNER JOIN
SpotifyClone.Following_Artists AS F
ON
A.id = F.artist_id
GROUP BY
A.name 
ORDER BY
`seguidores` DESC, `artista` LIMIT 3;
