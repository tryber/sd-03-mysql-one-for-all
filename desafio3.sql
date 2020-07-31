CREATE VIEW historico_reproducao_usuarios AS SELECT userrep.usuario usuario, can.cancao nome
FROM SpotifyClone.cancoes can, SpotifyClone.historico_de_reproducoes hist_rep, SpotifyClone.usuarios userrep
where can.cancao_id = hist_rep.cancao_id and userrep.usuario_id = hist_rep.usuario_id order by usuario, nome;
