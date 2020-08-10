-- 3. Crie uma VIEW chamada historico_reproducao_usuarios. Essa VIEW deverá ter apenas duas colunas:

-- A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.
-- A segunda coluna deve possuir o alias "nome" e exibir o nome da canção ouvida pela pessoa com base no seu histórico de reprodução.

-- Os resultados devem estar ordenados por nome do usuário em ordem alfabética e em caso de empate no nome os resultados devem ser ordenados pelo nome da canção em ordem alfabética.

CREATE VIEW historico_reproducao_usuarios AS
SELECT U.user_name AS usuario, S.song_name AS nome FROM track_history as H
INNER JOIN users AS U ON U.id = H.user_id
INNER JOIN songs AS S ON S.id = H.song_id
ORDER BY usuario, nome;
