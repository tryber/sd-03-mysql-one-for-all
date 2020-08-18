USE SpotifyClone;

CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        c.nome_cancao AS 'cancao',
        COUNT(r.cancao_id) AS 'reproducoes'
    FROM
        cancoes AS c
            INNER JOIN
        historico_reproducoes AS r ON c.cancao_id = r.cancao_id
	GROUP BY r.cancao_id
	ORDER BY 2 DESC, 1
    LIMIT 2;
