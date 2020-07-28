delimiter $$
create trigger trigger_usuario_delete
before delete on usuario
for each row
begin
delete from seguindo_artistas 
where usuario_id = old.usuario_id;
delete from historico_de_reproducoes
where usuario_id = old.usuario_id;
end
$$
delimiter ;
