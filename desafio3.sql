CREATE VIEW historico_reproducao_usuarios AS
  SELECT nome AS usuario, song AS nome
  FROM user_history AS uh
  INNER JOIN user_table AS ut
  ON uh.usuario = ut.user_id
  INNER JOIN songs_table AS st
  ON uh.cancao = st.song_id
  ORDER BY 1 ASC, 2 ASC;
