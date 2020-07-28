USE SpotifyClone;
CREATE VIEW historico_reproducao_usuarios AS
SELECT (
    SELECT user
    from users
    WHERE users.user_id = songs_history.user_id
  ) as usuario,
  (
    SELECT song
    FROM songs
    WHERE song_id = songs_history.song_id
  ) as nome
FROM song_history
ORDER BY usuario,
  nome;
