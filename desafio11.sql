CREATE VIEW cancoes_premium AS
    SELECT 
        songs.nome AS 'nome', COUNT(SH.song_id) AS 'reproducoes'
    FROM
        SpotifyClone.song_history AS SH
            INNER JOIN
        SpotifyClone.songs AS A ON A.id = SH.song_id
            INNER JOIN
        SpotifyClone.users AS B ON B.id = SH.user_id
    WHERE
        users.plano_id IN (2 , 3)
    GROUP BY (songs.nome)
    ORDER BY 1;
