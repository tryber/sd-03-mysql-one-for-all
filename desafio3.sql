CREATE VIEW historico_reproducao_usuarios AS
SELECT
(SELECT users.user FROM SpotifyClone.users WHERE users.user_id = sh.user_id) AS usuario,
(SELECT songs.song FROM SpotifyClone.songs WHERE songs.song_id = sh.song_id) AS nome
FROM SpotifyClone.songs_history sh
ORDER BY usuario, nome;
