CREATE VIEW top_3_artistas AS
SELECT a.name AS `artista`, COUNT(fa.user_id) AS `seguidores`
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.following_artists AS fa
ON a.id = fa.artist_id
GROUP BY a.name 
ORDER BY `seguidores` DESC, `artista` LIMIT 3;
