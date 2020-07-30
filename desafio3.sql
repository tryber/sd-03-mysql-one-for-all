CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.nome_usuario AS `usuario`, can.nome_cancao AS `nome`
FROM SpotifyClone.historico_de_reproducoes AS HIS
INNER JOIN SpotifyClone.usuário AS  u 
ON u.id = HIS.usuário_id
INNER JOIN SpotifyClone.cancoes AS can
ON can.id_cancao = HIS.id_cancao
ORDER BY `usuario`, `nome`;
