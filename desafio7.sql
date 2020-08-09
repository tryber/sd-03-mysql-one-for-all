CREATE VIEW perfil_artistas AS
SELECT 
    A.artist AS artista, AL.album AS album, FA.seguidores
FROM
    SpotifyClone.artists AS A
        INNER JOIN
    SpotifyClone.albuns AS AL ON A.artist_id = AL.artist_id
        INNER JOIN
    (SELECT 
        artist_id, COUNT(*) AS seguidores
    FROM
        SpotifyClone.following_artists
    GROUP BY artist_id) AS FA ON FA.artist_id = A.artist_id
ORDER BY seguidores DESC , artista ASC , album ASC;
