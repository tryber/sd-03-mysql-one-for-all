create view top_2_hits_do_momento as
select f.cancao, f.reproducoes from (select reproducoes,
(select cancao from cancao where cancao.cancao_id = t.cancao_id) as cancao
 from (select historico_de_reproducoes as cancao_id, count(*) as reproducoes from historico_de_reproducoes
group by historico_de_reproducoes 
order by count(*) desc limit 2) as t) as f
order by f.cancao;
