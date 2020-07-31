CREATE VIEW historico_reproducao_usuarios AS
SELECT user as usuario, music as nome FROM SpotifyClone.user_history AS us
INNER JOIN SpotifyClone.user AS u
ON u.user_id = us.user_id
INNER JOIN SpotifyClone.music AS m
ON m.music_id = us.music_id
ORDER BY user,music
