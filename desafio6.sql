create view faturamento_atual as
select min(t.valor) as faturamento_minimo, max(t.valor) as faturamento_maximo, round(avg(t.valor), 2) as faturamento_medio, sum(t.valor) as faturamento_total
 from (select *,
(select valor_plano from plano where usuario.plano = plano.plano_id) as valor
 from usuario) as t;
 