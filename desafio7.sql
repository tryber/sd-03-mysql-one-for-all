CREATE VIEW perfil_artistas AS
SELECT ar.artista `artista`,
al.album `album`,
COUNT(sa.usuario_id) `seguidores`
FROM SpotifyClone.artista ar
INNER JOIN SpotifyClone.album al ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artistas sa ON ar.artista_id = sa.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
