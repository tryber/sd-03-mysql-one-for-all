CREATE VIEW top_3_artistas AS
    SELECT 
        (SELECT artist_name FROM SpotifyClone.artists WHERE artists.artist_id = artists_followed_by_users.artist_id) AS artista,
        COUNT(*) AS seguidores
    FROM SpotifyClone.artists_followed_by_users
    GROUP BY artist_id
    ORDER BY seguidores DESC, artista LIMIT 3;
