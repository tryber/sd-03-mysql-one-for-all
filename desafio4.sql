CREATE VIEW top_3_artistas AS
SELECT (
    SELECT artist
    FROM SpotifyClone.artists artists
    WHERE artists.artist_id = af.artist_id
  ) AS artistas,
  COUNT(*) as seguidores
FROM SpotifyClone.artists_followers af
GROUP BY artistas
ORDER BY seguidores DESC,
  artistas
LIMIT 3;
