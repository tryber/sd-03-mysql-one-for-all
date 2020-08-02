CREATE VIEW cancoes_premium AS
SELECT mus.nome AS nome, count(mus.nome) AS reproducoes
FROM musicas AS mus
INNER JOIN historico_usuario AS his
ON his.musica_id = mus.id
INNER JOIN usuarios AS user
ON user.id = his.usuario_id AND user.plano_id IN (2,3)
GROUP BY `nome`
ORDER BY `nome`;
