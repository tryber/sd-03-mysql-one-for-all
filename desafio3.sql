CREATE VIEW historico_reproducao_usuarios AS
SELECT
(SELECT usuario.nome FROM SpotifyClone.usuario WHERE user.id = re.user_id) AS usuario,
(SELECT song.nome FROM SpotifyClone.song WHERE song.id = re.song_id) AS nome
FROM SpotifyClone.reproduction AS re
ORDER BY 1, 2;
