CREATE VIEW historico_reproducao_usuarios AS
SELECT
(SELECT usuario.name FROM SpotifyClone.user WHERE user.id = re.user_id) AS usuario,
(SELECT song.name FROM SpotifyClone.song WHERE song.id = re.song_id) AS nome
FROM SpotifyClone.reproduction AS re
ORDER BY 1, 2;
