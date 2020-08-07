CREATE VIEW top_3_artistas AS
    SELECT 
        (SELECT 
                artist
            FROM
                SpotifyClone.artists
            WHERE
                artist_id = artist.id) AS artista,
        COUNT(*) AS seguidores
    FROM
        SpotifyClone.following_artists
    GROUP BY artist_id
    ORDER BY seguidores DESC , artista ASC
    LIMIT 3;
		