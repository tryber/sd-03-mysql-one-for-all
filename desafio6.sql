CREATE VIEW faturamento_atual AS
SELECT 
MIN(P.valor_do_plano) AS faturamento_minimo,
MAX(P.valor_do_plano) AS faturamento_maximo,
ROUND(AVG(P.valor_do_plano),2) AS faturamento_medio,
SUM(P.valor_do_plano) AS faturamento_total
FROM SpotifyClone.plano AS P 
INNER JOIN SpotifyClone.usuário AS U
ON U.id_plano = P.id_plano ;
