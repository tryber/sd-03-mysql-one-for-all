USE SpotifyClone;
CREATE VIEW perfil_artistas AS
    SELECT 
        art.artist artista,
        alb.album album,
        COUNT(fol_art.artist_id) seguidores
    FROM
        SpotifyClone.albuns alb,
        SpotifyClone.artists art,
        SpotifyClone.following_artists fol_art
    WHERE
        alb.artist_id = art.id
            AND fol_art.artist_id = alb.artist_id
    GROUP BY alb.id
    ORDER BY seguidores DESC , artista , album;
