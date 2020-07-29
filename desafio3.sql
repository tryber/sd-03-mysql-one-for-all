CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        usuario.name AS 'usuario', cancoes.name AS 'nome'
    FROM
        SpotifyClone.history AS historico
            INNER JOIN
        SpotifyClone.user AS usuario ON usuario.id = historico.user_id
            INNER JOIN
        SpotifyClone.songs AS cancoes ON cancoes.id = historico.song_id
    ORDER BY 1 , 2;
