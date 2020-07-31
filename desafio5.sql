CREATE VIEW `top_2_hits_do_momento`
AS SELECT cn.cancoes_name, Count(hr.cancoes_id)
FROM cancoes cn
INNER JOIN historico_reproducao hr
ON cn.cancoes_id = hr.cancoes_id
GROUP BY hr.cancoes_id
ORDER BY 2 DESC
LIMIT 2
