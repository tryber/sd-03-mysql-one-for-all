CREATE VIEW top_3_artistas AS
  SELECT
    B.nome AS artista,
      COUNT(A.artista_id) AS seguidores
  FROM
    SpotifyClone.seguindo_artista AS A
      INNER JOIN
    SpotifyClone.artista AS B ON A.artista_id = B.id
  GROUP BY (A.artista_id)
  ORDER BY seguidores DESC , artista
  LIMIT 3;
