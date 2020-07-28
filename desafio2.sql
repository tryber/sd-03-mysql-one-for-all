CREATE VIEW estatisticas_musicais AS
SELECT COUNT(s.id) AS `cancoes`, COUNT(DISTINCT ar.id) AS `artistas`, COUNT(DISTINCT ab.id) AS `albuns`
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.albuns AS ab
ON ab.id = s.album_id
INNER JOIN SpotifyClone.artists AS ar
ON ar.id = ab.artist_id;
