USE SpotifyClone;

DELIMITER $$

CREATE VIEW cancoes_premium AS
SELECT cancoes.nome AS 'nome', COUNT(historico.cancao_id) AS 'reproducoes'
  FROM historico AS historico
    INNER JOIN cancoes AS cancoes ON cancoes.id = historico.cancao_id
    INNER JOIN usuario AS usuario ON usuario.id = historico.usuario_id
    WHERE usuario.plano_id IN (2, 3)
  GROUP BY (cancoes.nome)
  ORDER BY 1;

DELIMITER ;
