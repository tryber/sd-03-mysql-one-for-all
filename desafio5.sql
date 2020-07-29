CREATE VIEW top_2_hits_do_momento AS
SELECT cancoes.name AS 'cancao', COUNT(historico.song_id) 'reproducoes'
FROM SpotifyClone.history AS historico
INNER JOIN SpotifyClone.songs AS cancoes ON historico.song_id = cancoes.id
GROUP BY (historico.song_id)
ORDER BY 2 DESC, 1
LIMIT 2;
