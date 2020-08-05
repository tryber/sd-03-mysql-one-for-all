CREATE VIEW top_2_hits_do_momento AS
SELECT c.titulo AS cancao, COUNT(hu.usuario_id) AS reproducoes FROM historicos_usuarios AS hu
JOIN cancoes AS c
ON hu.cancao_id = c.cancao_id
GROUP BY hu.cancao_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
