CREATE VIEW historico_reproducao_usuarios AS
SELECT u.name AS `usuario`, s.title AS `nome`
FROM SpotifyClone.users AS u
INNER JOIN reproduction_history AS rh
ON rh.user_id = u.id
INNER JOIN SpotifyClone.songs AS s
ON s.id = rh.song_id
ORDER BY `usuario`, `nome`;
