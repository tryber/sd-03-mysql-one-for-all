USE SpotifyClone;

CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(cancoes.cancao_id) AS 'cancoes',
        (SELECT 
                COUNT(artistas.artista_id)
            FROM
                SpotifyClone.artistas AS artistas) AS 'artistas',
        (SELECT 
                COUNT(albuns.album_id)
            FROM
                SpotifyClone.albuns AS albuns) AS 'albuns'
    FROM
        SpotifyClone.cancoes AS cancoes;

/*
Decobrir porque não funcionou assim
CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(c.cancao_id) AS cancoes,
        COUNT(a.artista_id) AS artistas,
        COUNT(al.album_id) AS album
    FROM
        cancoes AS c
            INNER JOIN
        albuns AS al ON c.album_id = al.album_id
            INNER JOIN
        artistas AS a ON al.artista_id = a.artista_id;
*/