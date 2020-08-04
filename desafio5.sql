CREATE VIEW top_2_hits_do_momento AS
  SELECT st.song AS cancao,
  COUNT(usuario) AS reproducoes
  FROM SpotifyClone.user_history uh
  INNER JOIN SpotifyClone.songs_table st
  ON uh.cancao = st.song_id
  GROUP BY cancao
  ORDER BY 2 DESC, 1 ASC
  LIMIT 2;
