CREATE VIEW top_3_artistas AS
SELECT
(SELECT artist FROM SpotifyClone.artists WHERE artist_id = UA.artist_id) AS artista,
COUNT(*) AS seguidores
FROM SpotifyClone.users_artists AS UA
GROUP BY artist_id
ORDER BY
seguidores DESC,
artista ASC
LIMIT 3;
