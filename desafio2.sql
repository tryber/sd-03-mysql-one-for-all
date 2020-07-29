USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
SELECT COUNT(*) AS 'cancoes',
  (SELECT COUNT(*) FROM SpotifyClone.Artist) AS 'artistas',
  (SELECT COUNT(*) FROM SpotifyClone.Albuns) AS 'albuns'
FROM SpotifyClone.Artist AS A, SpotifyClone.Albuns AS B, SpotifyClone.Songs AS C
WHERE
(A.id = B.artist_id) AND
(B.id = C.album_id);
