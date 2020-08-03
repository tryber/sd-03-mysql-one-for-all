CREATE VIEW top_2_hits_do_momento AS
SELECT s.`name` AS cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.`history` AS h
INNER JOIN SpotifyClone.songs AS s
ON s.id = h.song_id
GROUP BY h.song_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
