CREATE VIEW historico_reproducao_usuarios AS
  SELECT
      B.nome AS usuario, C.nome AS nome
    FROM
      SpotifyClone.historico AS A
        INNER JOIN
      SpotifyClone.usuario AS B ON B.id = A.usuario_id
        INNER JOIN
      SpotifyClone.cancoes AS C ON C.id = A.cancao_id
  ORDER BY usuario ASC , nome;
