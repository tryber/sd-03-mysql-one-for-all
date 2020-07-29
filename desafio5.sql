CREATE VIEW  top_2_hits_do_momento AS
SELECT s.title AS `cancao`, COUNT(rh.song_id) AS `reproducoes`
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.reproduction_history AS rh
ON s.id = rh.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` LIMIT 2;
