CREATE VIEW perfil_artistas AS
SELECT
A.name AS `artista`, B.title AS `album`, COUNT(F.artist_id) AS `seguidores`
FROM
SpotifyClone.Artist AS A
INNER JOIN
SpotifyClone.Albuns AS B
ON
A.id = B.artist_id
INNER JOIN
SpotifyClone.Following_Artists AS F
ON
A.id = F.artist_id
GROUP BY
(B.id)
ORDER BY
`seguidores` DESC, `artista`, `album`;
