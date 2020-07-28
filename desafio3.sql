CREATE VIEW historico_reproducao_usuarios AS
SELECT
(SELECT user.name FROM SpotifyClone.user WHERE user.id = repr.user_id) AS usuario,
(SELECT song.name FROM SpotifyClone.song WHERE song.id = repr.song_id) AS nome
FROM SpotifyClone.reproduction AS repr
ORDER BY usuario, nome;
