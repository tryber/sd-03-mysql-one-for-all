CREATE VIEW perfil_artistas AS
SELECT artists.artist AS artista,
  albums.album AS album,
  (
    SELECT COUNT(*)
    FROM SpotifyClone.artists_followers af
    WHERE artists.artist_id = af.artist_id
  ) AS seguidores
FROM SpotifyClone.albums albums
  INNER JOIN SpotifyClone.artists artists ON artists.artist_id = albums.artist_id
ORDER BY seguidores DESC,
  artista,
  album;
