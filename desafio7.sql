create view perfil_artistas as
select t.artista, album, seguidores from (select seguindo_artistas as artista_id, count(*) as seguidores,
(select artista from artista where artista_id = seguindo_artistas.seguindo_artistas) as artista
from seguindo_artistas
group by seguindo_artistas) as t
inner join album 
on album.artista = t.artista_id
order by seguidores desc, t.artista;
