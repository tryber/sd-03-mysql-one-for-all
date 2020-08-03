CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(c.id) AS 'cancoes',
        (SELECT 
                COUNT(artista.id)
            FROM
                SpotifyClone.artista AS artista) AS 'artistas',
        (SELECT 
                COUNT(album.id)
            FROM
                SpotifyClone.album AS album) AS 'albuns'
    FROM
        SpotifyClone.cancoes AS c;
