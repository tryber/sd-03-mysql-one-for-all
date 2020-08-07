CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        A.name AS usuario, B.song AS nome
    FROM
        SpotifyClone.song_history AS SH
            INNER JOIN
        SpotifyClone.songs AS B ON B.song_id = SH.song_id
            INNER JOIN
        SpotifyClone.users AS A ON A.user_id = SH.user_id
    ORDER BY usuario ASC , nome ASC;
