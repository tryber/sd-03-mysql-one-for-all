CREATE VIEW faturamento_atual AS
SELECT MIN(plans.price) AS `faturamento_minimo`, 
MAX(plans.price) AS `faturamento_maximo`,
ROUND(AVG(plans.price), 2) AS `faturamento_medio`,
SUM(plans.price) AS `faturamento_total`
FROM SpotifyClone.plans
JOIN SpotifyClone.users AS users
ON users.plan_id = plans.id;
