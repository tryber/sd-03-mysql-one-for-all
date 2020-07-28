delimiter $$
create function quantidade_musicas_no_historico (id int)
returns int reads sql data
begin 
declare quantidade int;
select count(*) as quantidade_musicas_no_trabalho from historico_de_reproducoes
group by usuario_id
having usuario_id = id into quantidade;
return quantidade;
end$$

delimiter ;
