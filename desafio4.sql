CREATE VIEW top_3_artistas AS
SELECT artista.nome AS 'artista', COUNT(artists.artista_id) AS 'seguidores'
FROM SpotifyClone.artists AS artists
INNER JOIN SpotifyClone.artista AS artista ON artists.artista_id = artista.id
GROUP BY (artists.artista_id)
ORDER BY 2 DESC, 1
LIMIT 3;
