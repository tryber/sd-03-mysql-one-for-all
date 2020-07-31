CREATE VIEW cancoes_premium AS
SELECT can.cancao nome, COUNT(histrep.cancao_id) reproducoes
FROM SpotifyClone.cancoes can, SpotifyClone.historico_de_reproducoes histrep, SpotifyClone.usuarios usua
WHERE histrep.cancao_id = can.cancao_id
AND usua.usuario_id = histrep.usuario_id
AND usua.plano_id IN(2,3)
GROUP BY histrep.cancao_id
ORDER BY nome;
