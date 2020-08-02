CREATE VIEW top_2_hits_do_momento AS
SELECT mus.nome AS cancao, count(mus.nome) AS reproducoes
FROM musicas AS mus
INNER JOIN historico_usuario AS hu
ON hu.musica_id = mus.id
GROUP BY cancao
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
