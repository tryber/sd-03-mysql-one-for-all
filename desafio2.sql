CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(songs.id) AS 'songs',
        (SELECT 
                COUNT(singer.id)
            FROM
                SpotifyClone.singer AS singer) AS 'singers',
        (SELECT 
                COUNT(album.id)
            FROM
                SpotifyClone.album AS album) AS 'albuns'
    FROM
        SpotifyClone.songs AS songs;
