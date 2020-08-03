CREATE VIEW historico_reproducao_usuarios AS
SELECT u.`name` AS usuario, s.`name` AS nome  
FROM SpotifyClone.`user` AS u
INNER JOIN SpotifyClone.`history` AS h ON u.id = h.user_id
INNER JOIN SpotifyClone.songs AS s ON h.song_id = s.id
ORDER BY usuario, nome; 
