CREATE VIEW `historico_reproducao_usuarios`
AS SELECT   us.usuario, ca.cancoes_name AS 'nome'
FROM historico_reproducao hr
INNER JOIN  usuarios us
ON us.usuario_id = hr.usuario_id
INNER JOIN cancoes ca
ON ca.cancoes_id = hr.cancoes_id
ORDER BY 1 ASC
