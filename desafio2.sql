CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(C.id) AS `cancoes`,
COUNT(DISTINCT A.id) AS `artistas`,
COUNT(DISTINCT B.id) AS `albuns`
FROM SpotifyClone.Songs AS C
INNER JOIN SpotifyClone.Albuns AS B
ON B.id = C.album_id
INNER JOIN SpotifyClone.Artist AS A
ON A.id = B.artist_id;
