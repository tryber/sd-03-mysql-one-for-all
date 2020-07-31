CREATE VIEW faturamento_atual AS
SELECT
ROUND(min(price),2) as faturamento_minimo,
max(price) as faturamento_maximo,
ROUND(AVG(price),2) as faturamento_medio,
SUM(PRICE) as faturamento_total
FROM SpotifyClone.user u 
INNER JOIN SpotifyClone.plan as p
ON u.plan_id = p.plan_id
