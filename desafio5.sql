CREATE VIEW top_2_hits_do_momento AS
SELECT ca.cancoes `cancao`,
COUNT(hr.usuario_id) `reproducoes`
FROM SpotifyClone.cancoes ca
INNER JOIN SpotifyClone.historico_de_reproducoes hr ON ca.cancoes_id = hr.cancoes_id
INNER JOIN SpotifyClone.usuario us ON us.usuario_id = hr.usuario_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
