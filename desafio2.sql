CREATE VIEW estatisticas_musicais AS
SELECT COUNT(*) 'cancoes',
(SELECT COUNT(*) FROM SpotifyClone.artista) 'artistas',
(SELECT COUNT(*) FROM SpotifyClone.album) 'albuns'
FROM SpotifyClone.cancoes;
