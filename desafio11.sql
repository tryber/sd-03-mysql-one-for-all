create view cancoes_premium as
select t. nome, t.reproducoes from (select count(*) as reproducoes,
(select cancao from cancao where cancao_id = historico_de_reproducoes.historico_de_reproducoes) as nome
from historico_de_reproducoes
where usuario_id in (2, 3)
group by historico_de_reproducoes
order by nome) as t;
