CREATE VIEW estatisticas_musicais AS
	SELECT COUNT(id) AS cancoes,
	(SELECT COUNT(id) FROM SpotifyClone.artist) AS artistas,
	(SELECT COUNT(id) FROM SpotifyClone.album) AS albuns
	FROM SpotifyClone.songs;
