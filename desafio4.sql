USE SpotifyClone;
CREATE VIEW top_3_artistas AS
SELECT (
    SELECT artist
    FROM artists
    WHERE artists.artist_id = artists_followers.artist_id
  ) AS artistas,
  COUNT(*) as seguidores
FROM artists_followers
GROUP BY artistas
ORDER BY seguidores DESC,
  artistas
LIMIT 3;
