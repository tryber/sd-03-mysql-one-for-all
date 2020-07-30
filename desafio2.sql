CREATE VIEW `estatisticas_musicais` 
AS SELECT COUNT(*) AS 'cancoes' ,
(SELECT COUNT(*) FROM artista) AS 'artistas',
(SELECT COUNT(*) FROM album) AS 'album'
FROM spotifyclone.cancoes
