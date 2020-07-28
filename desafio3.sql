USE SpotifyClone;
CREATE VIEW historico_reproducao_usuarios AS
SELECT (
    SELECT users.user
    FROM users
    WHERE users.user_id = song_history.user_id;
) AS usuario,
(
  SELECT songs.song
  FROM songs
  WHERE songs.song_id = songs_history.song_id
) AS nome
FROM songs_history
ORDER BY usuario,
  nome;
