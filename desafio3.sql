CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        (SELECT user_name FROM SpotifyClone.users WHERE users.user_id = users_reproduction_history.user_id) AS usuario,
        (SELECT song_name FROM SpotifyClone.songs WHERE songs.song_id = users_reproduction_history.song_id) AS nome
    FROM SpotifyClone.users_reproduction_history
    ORDER BY usuario, nome;
