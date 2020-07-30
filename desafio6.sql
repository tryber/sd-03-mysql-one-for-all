CREATE VIEW faturamento_atual AS
SELECT
MIN(Plan.price) AS `faturamento_minimo`, 
MAX(Plan.price) AS `faturamento_maximo`,
ROUND(AVG(Plan.price), 2) AS `faturamento_medio`,
SUM(Plan.price) AS `faturamento_total`
FROM
SpotifyClone.Plan
INNER JOIN
SpotifyClone.User AS Users
ON
Users.plan_id = Plan.id;
