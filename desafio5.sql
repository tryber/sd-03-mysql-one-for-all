CREATE VIEW top_2_hits_do_momento AS
SELECT
(SELECT name FROM SpotifyClone.song AS song WHERE song.id = repr.song_id) AS cancao,
COUNT(*) AS reproducoes
FROM SpotifyClone.reproduction AS repr
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
