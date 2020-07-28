create view estatisticas_musicais as
select count(*) as cancoes,
(select count(*) from artista) as artistas,
(select count(*) from album) as albuns
from cancao;
