-- 8. Crie uma trigger chamada trigger_usuario_delete que deve ser disparada sempre que um usuário for excluído do banco de dados, refletindo essa exclusão em todas as tabelas que ele estiver.

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM track_history WHERE user_id = 1;
DELETE FROM followers WHERE user_id = 1;
END; $$
DELIMITER ;

DELETE FROM users
WHERE user_name = 'Thati';
