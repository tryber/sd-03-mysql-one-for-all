CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(DISTINCT c.id) AS cancoes,
COUNT(DISTINCT ar.id) AS artistas,
COUNT(DISTINCT ab.id) as albuns
FROM SpotifyClone.artistas AS ar, SpotifyClone.albuns AS ab, SpotifyClone.cancoes as c;
