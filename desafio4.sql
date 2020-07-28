CREATE VIEW top_3_artistas AS
SELECT
(SELECT name FROM SpotifyClone.artist AS artist WHERE artist.id = follow.artist_id) AS artista,
COUNT(*) AS seguidores
FROM SpotifyClone.follow AS follow
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
