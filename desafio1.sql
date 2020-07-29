CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

-- Criação das tabelas 
CREATE TABLE planos (
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  tipo VARCHAR(30) NOT NULL,
  valor_plano DECIMAL(3, 2) NOT NULL DEFAULT 0
);

CREATE TABLE usuarios (
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(30) NOT NULL,
idade INT(2),
plano_id INT,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
);

CREATE TABLE artista (
  artista_id INT PRIMARY KEY AUTO_INCREMENT,
  artista_name VARCHAR(35)
);

CREATE TABLE album (
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(35),
  artista_id INT,
  FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
);

CREATE TABLE cancoes (
  cancoes_id int PRIMARY KEY AUTO_INCREMENT,
  cancoes_name VARCHAR(35) NOT NULL,
  album_id int,
  FOREIGN KEY (album_id) REFERENCES album(album_id)
);

CREATE TABLE historico_reproducao (
  cancoes_id INT,
  usuario_id INT,
  PRIMARY KEY(cancoes_id, usuario_id),
  FOREIGN KEY (cancoes_id) REFERENCES cancoes(cancoes_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);

CREATE TABLE seguindo_artista (
  usuario_id INT,
  artista_id INT,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
);

INSERT INTO planos(tipo, valor_plano )
VALUES 
('gratuito',0),
('familiar',	7.99),
('universitário',	5.99);

INSERT INTO usuarios(usuario,
idade,
plano_id) 
VALUES
('Thati',	23,	1),
('Cintia',35,	2),
('Bill',20,3),
('Roger',45,1);


INSERT INTO artista(artista_name) 
VALUES 
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO seguindo_artista(usuario_id,artista_id)
VALUES 
(1,1),
(1,3),
(1,4),
(2,1),
(2,3),
(3,2),
(3,1),
(4,4);

INSERT INTO album(album_name,artista_id)
VALUES
('Envious',1),
('Exuberant',1),
('Hallowed Steam',2),
('Incandescent',3),
('Temporary Culture',4);

INSERT INTO cancoes(cancoes_name,album_id)
VALUES
('Soul For Us',	1),
('Dance With Her Own',1),
('Reflections Of Magic',1),
('Time Fireworks',2),
('Troubles Of My Inner Fire', 2),
 ('She Knows',3),
("Sweetie, Let's Go Wild",3),
('Honey, So Do I',3),
('Magic Circus',3),
("Honey, Let's Be Silly",4),
 ('Diamond Power',4),
('Home Forever',4),
('Rock His Everything',	4),
('Celebration Of More',	4),
('Fantasy For Me',4),
('Without My Streets',5),
 ('Words Of Her Life',5),
('Thang Of Thunder',5);

INSERT INTO historico_reproducao(cancoes_id, usuario_id)
VALUES
(1,1),
(9,1),
(11,1),
(18,1),
(12,2),
(17,2),
(3,2),
(10,2),
(5,3),
(9,3),
(18,3),
(2,4),
(16,4),
(14,4);
