CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        userR.name AS usuario, song.name AS nome
    FROM
        SpotifyClone.users AS userR
            INNER JOIN
        SpotifyClone.songs AS song
            INNER JOIN
        SpotifyClone.play_history AS history
    WHERE
        userR.id = history.user_id
            AND song.id = history.song_id
    ORDER BY userR.name, song.name;
