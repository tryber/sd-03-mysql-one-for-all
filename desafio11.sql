CREATE VIEW cancoes_premium AS
SELECT 
C.nome_cancao AS nome,
COUNT(HIS.id_cancao) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes AS HIS
INNER JOIN SpotifyClone.cancoes AS C
ON C.id_cancao = HIS.id_cancao
INNER JOIN SpotifyClone.usuário AS US
ON US.id = HIS.usuário_id
WHERE US.id_plano IN (2,3)
GROUP BY nome
ORDER BY nome;
