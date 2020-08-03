CREATE VIEW cancoes_premium AS
  SELECT
    B.nome AS nome, COUNT(A.cancao_id) AS reproducoes
  FROM
    SpotifyClone.historico AS A
      INNER JOIN
    SpotifyClone.cancoes AS B ON B.id = A.cancao_id
      INNER JOIN
    SpotifyClone.usuario AS C ON C.id = A.usuario_id
  WHERE
    C.plano_id IN (2 , 3)
  GROUP BY nome
  ORDER BY nome;
