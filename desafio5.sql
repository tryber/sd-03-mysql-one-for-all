USE SpotifyClone;
CREATE VIEW top_2_hits_do_momento AS
SELECT (
    SELECT song
    FROM songs
    WHERE songs.song_id = songs_history.song_id
  ) AS cancao,
  COUNT(*) As reproducoes
FROM songs_history
GROUP BY cancao
ORDER BY reproducoes DESC,
  cancao
LIMIT 2;
