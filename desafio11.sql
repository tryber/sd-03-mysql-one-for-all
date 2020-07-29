CREATE VIEW cancoes_premium AS
    SELECT 
        cancoes.name AS 'nome',
        COUNT(historico.song_id) AS 'reproducoes'
    FROM
        SpotifyClone.history AS historico
            INNER JOIN
        SpotifyClone.songs AS cancoes ON cancoes.id = historico.song_id
            INNER JOIN
        SpotifyClone.user AS usuario ON usuario.id = historico.user_id
    WHERE
        usuario.plan_id IN (2 , 3)
    GROUP BY (cancoes.name)
    ORDER BY 1;
    
    