CREATE VIEW perfil_artistas AS
SELECT A.artist AS artista, AL.album AS album, UA.seguidores
FROM SpotifyClone.artists AS A
INNER JOIN SpotifyClone.albuns AS AL
ON A.artist_id = AL.artist_id
INNER JOIN (
SELECT artist_id, COUNT(*) AS seguidores FROM SpotifyClone.users_artists GROUP BY artist_id
) AS UA
ON UA.artist_id = A.artist_id
ORDER BY
seguidores DESC,
artista ASC,
album ASC;
