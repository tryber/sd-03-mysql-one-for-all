create view top_3_artistas as
select * from (select t.artista, count(*)  as seguidores from (select usuario_id,
(select artista from artista where artista_id = seguindo_artistas.seguindo_artistas) as artista
from seguindo_artistas) as t
group by t.artista
order by seguidores  desc limit 3) as f
order by f.seguidores desc, f.artista;
