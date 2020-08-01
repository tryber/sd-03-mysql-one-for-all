CREATE VIEW top_3_artistas AS
SELECT artist as artista,count(*) as seguidores FROM SpotifyClone.user_follow as uf
INNER JOIN SpotifyClone.user as u
ON u.user_id = uf.user_id
INNER JOIN SpotifyClone.artist as a
ON a.artist_id = uf.artist_id
group by artista
ORDER BY seguidores DESC, artista
LIMIT 3
