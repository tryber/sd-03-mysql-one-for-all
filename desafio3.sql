CREATE VIEW historico_reproducao_usuarios AS
SELECT
U.name AS `usuario`,
S.title AS `nome`
FROM
SpotifyClone.User AS U
INNER JOIN Reproduction_History AS H
ON H.user_id = U.id
INNER JOIN SpotifyClone.Songs AS S
ON S.id = H.song_id
ORDER BY `usuario`, `nome`;
