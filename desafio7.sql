CREATE VIEW perfil_artistas AS
    SELECT 
        a.nome AS 'artista',
        al.nome_album AS 'album',
        COUNT(s.artista_id) AS 'seguidores'
    FROM
        artistas AS a
            INNER JOIN
        albuns AS al ON a.artista_id = al.artista_id
            INNER JOIN
        seguindo_artista AS s ON al.artista_id = s.artista_id
    GROUP BY al.album_id
    ORDER BY 3 DESC , 1 , 2;
