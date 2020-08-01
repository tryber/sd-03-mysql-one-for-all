CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(plan.value), 2) AS faturamento_minimo,
ROUND(MAX(plan.value), 2) AS faturamento_maximo,
ROUND(AVG(plan.value), 2) AS faturamento_medio,
ROUND(SUM(plan.value), 2) AS faturamento_total
FROM SpotifyClone.plan AS plan INNER JOIN SpotifyClone.user AS user ON plan.id = user.plan_id;
