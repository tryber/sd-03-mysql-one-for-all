CREATE VIEW top_2_hits_do_momento AS
SELECT songs.name AS 'cancao', COUNT(history.song_id) 'reproducoes'
FROM SpotifyClone.history AS historico
INNER JOIN SpotifyClone.songs AS cancoes ON history.song_id = cancoes.id
GROUP BY (history.song_id)
ORDER BY 2 DESC, 1 LIMIT 2;
