CREATE VIEW estatisticas_musicais AS
SELECT COUNT(titulo) AS cancoes , (SELECT COUNT(nome) FROM artistas AS artistas) AS artistas,
(SELECT COUNT(titulo) FROM albuns AS albuns) AS albuns FROM cancoes AS cancoes;
