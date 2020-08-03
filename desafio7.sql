CREATE VIEW perfil_artistas AS
  SELECT artista.name AS 'artista', album.name AS 'album', COUNT(artists.artista_id) AS 'seguidores'
    FROM SpotifyClone.artista AS artista
    INNER JOIN SpotifyClone.album AS album ON album.artista_id = artista.id
    INNER JOIN SpotifyClone.artists AS artists ON artists.artista_id = artista.id
  GROUP BY (album.id)
  ORDER BY seguidores DESC, artista, album;
