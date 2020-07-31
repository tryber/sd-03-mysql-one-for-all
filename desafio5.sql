CREATE VIEW top_2_hits_do_momento AS
SELECT S.song AS cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.reproduction_history AS RH
INNER JOIN SpotifyClone.songs AS S
ON S.song_id = RH.song_id
GROUP BY RH.song_id
ORDER BY 
reproducoes DESC,
cancao ASC
LIMIT 2;
