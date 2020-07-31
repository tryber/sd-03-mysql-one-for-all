CREATE VIEW perfil_artistas AS
SELECT
  (SELECT artist_name FROM SpotifyClone.artists WHERE artists.artist_id = albums.artist_id) AS artista,
  album_name AS album,
  (SELECT COUNT(*) FROM SpotifyClone.artists_followed_by_users WHERE artists_followed_by_users.artist_id = albums.artist_id) AS seguidores
FROM SpotifyClone.albums
ORDER BY seguidores DESC, artista, album;
