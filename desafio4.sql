CREATE VIEW top_3_artistas AS
SELECT (
    SELECT artist
    FROM SpotifyClone.artists artists
    WHERE artists.artist_id = af.artist_id
  ) AS artista,
  COUNT(*) as seguidores
FROM SpotifyClone.artists_followers af
GROUP BY artista
ORDER BY seguidores DESC,
  artista
LIMIT 3;
