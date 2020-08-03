CREATE VIEW perfil_artistas AS
  SELECT 
    A.nome AS artista,
    B.nome AS album,
    COUNT(C.artista_id) AS seguidores
  FROM
    SpotifyClone.artista AS A
      INNER JOIN
    SpotifyClone.album AS B ON B.artista_id = A.id
      INNER JOIN
    SpotifyClone.seguindo_artista AS C ON C.artista_id = A.id
  GROUP BY B.id
  ORDER BY seguidores DESC , artista , album;
  