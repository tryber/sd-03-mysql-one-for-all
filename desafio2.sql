CREATE VIEW estatisticas_musicais AS
SELECT *
FROM
(SELECT COUNT(*) as cancoes from SpotifyClone.music) m
JOIN (SELECT COUNT(*) as artistas from SpotifyClone.artist) a
JOIN (SELECT COUNT(*) as albuns from SpotifyClone.album) t
