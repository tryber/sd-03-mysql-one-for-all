CREATE VIEW top_3_singers AS
    SELECT 
        singer.name AS 'singer',
        COUNT(follow_singer.singer_id) AS 'seguidores'
    FROM
        SpotifyClone.follow_singer AS follow_singer
            INNER JOIN
        SpotifyClone.singer AS singer ON follow_singer.singer_id = singer.id
    GROUP BY (follow_singer.singer_id)
    ORDER BY 2 DESC , 1
    LIMIT 3;
