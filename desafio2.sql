USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT COUNT(id) AS 'cancoes',
  (SELECT COUNT(DISTINCT id) FROM SpotifyClone.Artist) AS 'artistas',
  (SELECT COUNT(DISTINCT id) FROM SpotifyClone.Albuns) AS 'albuns'
FROM SpotifyClone.Artist AS A, SpotifyClone.Albuns AS B, SpotifyClone.Songs AS C
WHERE
(A.id = B.artist_id) AND
(B.id = C.album_id);
