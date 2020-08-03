CREATE VIEW top_3_artistas AS
SELECT artista.name AS 'artista', COUNT(artists.artist_id) AS 'seguidores'
FROM SpotifyClone.following_artist AS artists
INNER JOIN SpotifyClone.artista AS artista ON artists.artist_id = artista.id
GROUP BY (artists.artist_id)
ORDER BY 2 DESC, 1
LIMIT 3;
