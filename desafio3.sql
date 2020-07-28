create view historico_reproducao_usuarios as
select
(select usuario from usuario where usuario.usuario_id = historico_de_reproducoes.usuario_id) as usuario,
(select cancao from cancao where cancao_id = historico_de_reproducoes.historico_de_reproducoes) as nome
from historico_de_reproducoes
order by usuario, nome;
