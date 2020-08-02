CREATE VIEW top_3_artistas AS
SELECT
(SELECT artista.name FROM SpotifyClone.artist AS artista WHERE artist.id = follow.artist_id) AS artista,
COUNT(*) AS seguidores FROM SpotifyClone.follow AS follow
GROUP BY artista ORDER BY seguidores DESC, artista LIMIT 3;
