CREATE VIEW top_2_hits_do_momento AS
SELECT cancao.cancao cancao, count(*) reproducoes
FROM SpotifyClone.historico_de_reproducoes artrep, SpotifyClone.cancoes cancao
WHERE cancao.cancao_id = artrep.cancao_id
group by artrep.cancao_id
order by reproducoes desc, cancao
limit 2;
