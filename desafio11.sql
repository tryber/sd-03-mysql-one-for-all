SELECT song AS nome,
COUNT(his.usuario) AS reproducoes
FROM user_history his
INNER JOIN songs_table song
ON his.cancao = song.song_id
INNER JOIN user_table ut
on ut.user_id = his.usuario AND ut.plano <> 1
GROUP BY song
ORDER BY 1 ASC;
