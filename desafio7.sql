CREATE VIEW perfil_artistas AS
SELECT artista, album, seguidores
FROM (SELECT artist as artista, a.artist_id ,count(*) as seguidores  FROM SpotifyClone.user_follow as uf
INNER JOIN SpotifyClone.user as u
ON u.user_id = uf.user_id
INNER JOIN SpotifyClone.artist as a
ON a.artist_id = uf.artist_id
group by artist,artist_id) t
JOIN SpotifyClone.album a
ON a.artist_id = t.artist_id
order BY `seguidores`desc, artista
