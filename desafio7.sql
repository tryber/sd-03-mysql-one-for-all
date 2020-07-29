CREATE VIEW perfil_artistas AS
SELECT ar.name AS `artista`, ab.title AS `album`, COUNT(fa.artist_id) AS `seguidores`
FROM SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.albuns AS ab
ON ar.id = ab.artist_id
INNER JOIN SpotifyClone.following_artists AS fa
ON ar.id = fa.artist_id
GROUP BY (ab.id)
ORDER BY `seguidores` DESC, `artista`, `album`;
