CREATE VIEW top_3_artistas AS SELECT 
    (SELECT name FROM artists AS artist
        WHERE artist_id = artist.id) AS artista,
    (SELECT COUNT(artist_id)) AS seguidores
FROM
    SpotifyClone.following_artists
GROUP BY artist_id
ORDER BY seguidores DESC , artista
LIMIT 3;
