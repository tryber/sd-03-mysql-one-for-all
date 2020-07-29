USE SpotifyClone;
CREATE VIEW top_2_hits_do_momento AS
SELECT (
    SELECT song
    FROM SpotifyClone.songs songs
    WHERE songs.song_id = sh.song_id
  ) AS cancao,
  COUNT(*) As reproducoes
FROM songs_history sh
GROUP BY cancao
ORDER BY reproducoes DESC,
  cancao
LIMIT 2;
