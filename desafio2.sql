CREATE VIEW estatisticas_musicais AS
  SELECT 
      COUNT(cancoes.id) AS 'cancoes',
      (SELECT 
              COUNT(artist.id) FROM SpotifyClone.artist AS artista) AS 'artistas',
      (SELECT 
              COUNT(album.id) FROM SpotifyClone.album AS album) AS 'albuns'
   FROM
      SpotifyClone.songs AS cancoes;
