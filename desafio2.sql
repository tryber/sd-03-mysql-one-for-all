USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS (
  SELECT COUNT(*)
  FROM SpotifyClone.songs
) AS cancoes,
(
  SELECT COUNT(*)
  FROM SpotifyClone.artists
) AS artistas,
(
  SELECT COUNT(*)
  FROM SpotifyClone.albums
) AS albuns;
