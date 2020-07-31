CREATE VIEW top_3_artistas AS
SELECT ar.artista `artista`,
COUNT(sa.usuario_id) `seguidores`
FROM SpotifyClone.artista ar
INNER JOIN SpotifyClone.seguindo_artistas sa ON ar.artista_id = sa.artista_id
INNER JOIN SpotifyClone.usuario us ON us.usuario_id = sa.usuario_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
