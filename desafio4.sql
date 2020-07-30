-- 4. Crie uma VIEW com o nome top_3_artistas que deve mostrar somente as três pessoas artistas mais populares no banco SpotifyClone, possuindo as seguintes colunas:

-- A primeira coluna deve possuir o alias "artista" e exibir o nome da pessoa artista.
-- A segunda coluna deve ter o alias "seguidores" e exibir a quantidade de pessoas que estão seguindo aquela pessoa artista.
-- Seu resultado deve estar ordenado em ordem decrescente, baseando-se na quantidade de seguidores. Em caso de empate, ordene os resultados pelo nome da pessoa artista em ordem alfabética.

CREATE VIEW top_3_artistas AS
SELECT  
(SELECT artist_name FROM artists WHERE artists.id = followers.artist_id) AS artista, 
COUNT(*) AS seguidores
FROM followers
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;

-- SELECT * FROM top_3_artistas;
