use spotifyclone;
SELECT cancoes.cancoes_name AS `nome`, COUNT(historico_reproducao.cancoes_id) AS `reproducoes`
FROM historico_reproducao
INNER JOIN  cancoes
ON cancoes.cancoes_id = historico_reproducao.cancoes_id
INNER JOIN usuarios 
ON historico_reproducao.usuario_id = usuarios.usuario_id
INNER JOIN planos
ON planos.plano_id = usuarios.plano_id
WHERE planos.plano_id BETWEEN 2 AND 3
GROUP BY cancoes.cancoes_name
ORDER BY cancoes.cancoes_name
