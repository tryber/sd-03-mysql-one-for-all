CREATE VIEW historico_reproducao_usuarios AS 
SELECT U.name AS usuario, S.song AS nome
FROM SpotifyClone.reproduction_history AS RH
INNER JOIN SpotifyClone.songs AS S
ON S.song_id = RH.song_id
INNER JOIN SpotifyClone.users AS U
ON U.user_id = RH.user_id
ORDER BY 
usuario ASC,
nome ASC;
