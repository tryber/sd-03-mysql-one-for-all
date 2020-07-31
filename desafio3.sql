CREATE VIEW historico_reproducao_usuarios AS
SELECT user.nome AS usuario, mus.nome AS nome
FROM musicas AS mus
INNER JOIN usuarios AS user
INNER JOIN historico_usuario
ON historico_usuario.musica_id = mus.id AND historico_usuario.usuario_id = user.id
ORDER BY user.nome, mus.nome;
