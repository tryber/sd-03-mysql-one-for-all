CREATE VIEW top_3_artistas AS
  SELECT art.nome AS artista,
  COUNT(usuario) AS seguidores
  FROM SpotifyClone.user_follows AS uf
  INNER JOIN SpotifyClone.artist_table AS art
    ON uf.artista = art.artist_id
  GROUP BY artista
  ORDER BY 2 DESC;
