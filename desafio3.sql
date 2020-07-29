CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.nome_usuario AS `usuario`, can.nome_cancao AS `nome`
FROM SpotifyClone.cancoes AS can
INNER JOIN SpotifyClone.usuário AS  u 
INNER JOIN SpotifyClone.historico_de_reproducoes AS HIS
ON u.id = HIS.id_cancao
ORDER BY `usuario`, `nome`;
