create view cancoes_premium AS
SELECT music as nome, count(*) as reproducoes FROM SpotifyClone.user_history uh
INNER JOIN SpotifyClone.music m
ON m.music_id = uh.music_id
where user_id = 2 or user_id = 3
group by music
order by nome
