CREATE VIEW top_3_artistas AS
SELECT artista.nome_artista artista, count(*) seguidores
FROM SpotifyClone.artistas_favoritos artfav, SpotifyClone.artistas artista
WHERE artista.artista_id = artfav.artista_id
group by artfav.artista_id
order by seguidores desc, artista
limit 3;
