CREATE VIEW cancoes_premium AS
SELECT
c.titulo AS nome, COUNT(hu.cancao_id) AS reproducoes FROM historicos_usuarios AS hu
JOIN cancoes AS c
ON c.cancao_id = hu.cancao_id
JOIN usuarios AS u
ON u.usuario_id = hu.usuario_id
WHERE u.plano_id IN (2 , 3)
GROUP BY c.titulo
ORDER BY `nome`;
