CREATE VIEW faturamento_atual AS
SELECT
    ROUND(MIN(plan_values), 2) AS `faturamento_minimo`,
    ROUND(MAX(plan_values), 2) AS `faturamento_maximo`,
    ROUND(AVG(plan_values), 2) AS `faturamento_medio`,
    ROUND(SUM(plan_values), 2) AS `faturamento_total`
FROM (SELECT (SELECT plan_value FROM SpotifyClone.plans WHERE plans.plan_id = users.plan_id) AS plan_values FROM SpotifyClone.users) AS A;
