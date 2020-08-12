CREATE VIEW perfil_singers AS
    SELECT 
        singer.name AS 'singer',
        album.name AS 'album',
        COUNT(follow_singer.singer_id) AS 'seguidores'
    FROM
        SpotifyClone.singer AS singer
            INNER JOIN
        SpotifyClone.album AS album ON album.singer_id = singer.id
            INNER JOIN
        SpotifyClone.follow_singer AS follow_singer ON follow_singer.singer_id = singer.id
    GROUP BY (album.id)
    ORDER BY 3 DESC , 1 , 2;
