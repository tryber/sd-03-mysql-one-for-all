CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome AS usuario, c.titulo AS nome FROM historicos_usuarios AS hu
JOIN usuarios AS u
ON u.usuario_id = hu.usuario_id
JOIN cancoes AS c
ON c.cancao_id = hu.cancao_id
ORDER BY `usuario`, `nome`;
