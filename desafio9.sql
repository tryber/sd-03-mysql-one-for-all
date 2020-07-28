delimiter $$
create procedure albuns_do_artista (in nome varchar(80))
begin
select artista.artista, album from artista
inner join album 
on album.artista = artista.artista_id
where artista.artista = nome
order by album;
end$$
delimiter ;
