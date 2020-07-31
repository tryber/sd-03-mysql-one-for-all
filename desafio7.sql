CREATE VIEW perfil_artistas AS
SELECT (SELECT name 
    FROM SpotifyClone.artists artist
    where artist_id = id )AS artista,
    name AS album,
    (
    SELECT COUNT(user_id) FROM SpotifyClone.following_artists follower
    WHERE albuns.artist_id = follower.artist_id GROUP BY album
) AS seguidores
FROM SpotifyClone.albuns albuns
ORDER BY seguidores DESC, artista;
