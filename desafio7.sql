CREATE VIEW perfil_artistas AS
    SELECT 
        art.nome_artista artista,
        alb.album album,
        COUNT(fol_art.artist_id) seguidores
    FROM
        SpotifyClone.albuns alb,
        SpotifyClone.artists art,
        SpotifyClone.following_artists fol_art
    WHERE
        alb.artists_id = art.artists_id
            AND fol_art.artist_id = alb.artist_id
    GROUP BY alb.album_id
    ORDER BY seguidores DESC , artista , album;
