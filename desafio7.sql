CREATE VIEW perfil_artistas AS
  SELECT art.nome AS artista,
  alb.nome AS album,
  (
    SELECT COUNT(usuario)
    FROM SpotifyClone.user_follows uf
    WHERE uf.artista = art.artist_id
  ) AS seguidores
  FROM SpotifyClone.album_table alb
  INNER JOIN SpotifyClone.artist_table art
  ON alb.artista = art.artist_id
  ORDER BY 3 DESC, 1 ASC, 2 ASC;
