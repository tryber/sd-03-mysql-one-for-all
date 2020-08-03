CREATE VIEW top_2_hits_do_momento AS
  SELECT
    B.nome AS cancao, COUNT(A.cancao_id) AS reproducoes
  FROM
    SpotifyClone.historico AS A
	  INNER JOIN
    SpotifyClone.cancoes AS B ON A.cancao_id = B.id
  GROUP BY (A.cancao_id)
  ORDER BY reproducoes DESC , cancao
  LIMIT 2;
