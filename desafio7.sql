CREATE VIEW perfil_artistas AS
SELECT art.nome_artista artista, alb.album album, COUNT(art_fav.artista_id) seguidores
FROM
SpotifyClone.albums alb,
SpotifyClone.artistas art,
SpotifyClone.artistas_favoritos art_fav
WHERE alb.artista_id = art.artista_id AND art_fav.artista_id = alb.artista_id
group by alb.album_id
order by seguidores desc, artista, album;
