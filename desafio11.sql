-- 11. Crie uma VIEW chamada cancoes_premium que exiba o nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano familiar ou universitário, de acordo com os detalhes a seguir:

-- A primeira coluna deve exibir o nome da canção, com o alias "nome";
-- A segunda coluna deve exibir a quantidade de pessoas que já escutaram aquela canção, com o alias "reproducoes";
-- Seus resultados devem estar agrupados pelo nome da canção e ordenados em ordem alfabética.

CREATE VIEW cancoes_premium AS
SELECT S.song_name AS nome, COUNT(H.user_id) as reproducoes
FROM track_history AS H
JOIN songs AS S ON S.id = H.song_id
JOIN users AS U ON U.id = H.user_id
WHERE U.plan_id > 1
GROUP BY song_name
ORDER BY nome;
