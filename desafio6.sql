CREATE VIEW faturamento_atual AS SELECT MIN(plan.valor_plano) AS 'faturamento_minimo',
MAX(plan.valor_plano) AS 'faturamento_maximo',
ROUND(AVG(plan.valor_plano), 2) AS 'faturamento_medio',
SUM(plan.valor_plano) AS 'faturamento_total'
FROM SpotifyClone.planos plan, SpotifyClone.usuarios userss
where plan.plano_id = userss.plano_id;
