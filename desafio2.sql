USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(C.id) AS 'cancoes',
COUNT(DISTINCT A.id) AS 'artistas',
COUNT(DISTINCT B.id) AS 'albuns'
FROM
SpotifyClone.Artist AS A,
SpotifyClone.Albuns AS B,
SpotifyClone.Songs AS C
WHERE
(A.id = B.artist_id) AND
(B.id = C.album_id);
