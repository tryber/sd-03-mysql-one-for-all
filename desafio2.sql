CREATE VIEW estatisticas_musicais AS
  SELECT COUNT(DISTINCT song.song) AS cancoes,
  COUNT(DISTINCT alb.artista) AS artistas,
  COUNT(DISTINCT alb.nome) AS albuns
  from SpotifyClone.songs_table AS song,
  SpotifyClone.album_table AS alb;
