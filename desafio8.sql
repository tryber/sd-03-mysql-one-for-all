DELIMITER $$
CREATE TRIGGER trigger_usuario_delete 
 BEFORE DELETE ON SpotifyClone.users 
 FOR EACH ROW BEGIN DELETE FROM 
 SpotifyClone.following_artists 
 WHERE user_id = OLD.id;
DELETE FROM SpotifyClone.play_history 
WHERE
    user_id = OLD.id;
 END $$

DELIMITER ;
