CREATE VIEW top_3_artistas AS
SELECT
(SELECT name FROM SpotifyClone.artist AS artist WHERE artist.id = follow.artist_id) AS artistas,
COUNT(*) AS seguidores
FROM SpotifyClone.follow AS follow
GROUP BY artistas
ORDER BY seguidores DESC, artistas
LIMIT 3;
