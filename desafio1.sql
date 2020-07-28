CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
  id INT AUTO_INCREMENT,
  nome_plano VARCHAR(25) NOT NULL,
  valor DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (id)
) engine = InnoDB;

CREATE TABLE usuarios(
  id INT AUTO_INCREMENT,
  nome_usuario VARCHAR(50) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (plano_id) REFERENCES planos(id)
) engine = InnoDB;

CREATE TABLE artistas(
  id INT AUTO_INCREMENT,
  nome_artista VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
) engine = InnoDB;

CREATE TABLE albuns(
  id INT AUTO_INCREMENT,
  nome_album VARCHAR(100) NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (artista_id) REFERENCES artistas(id) 
) engine = InnoDB;

CREATE TABLE cancoes(
  id INT AUTO_INCREMENT,
  nome_cancao VARCHAR(100) NOT NULL,
  album_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (album_id) REFERENCES albuns(id)
) engine = InnoDB;

CREATE TABLE usuario_seguindo_artista(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
  FOREIGN KEY (artista_id) REFERENCES artistas(id)
) engine = InnoDB;

CREATE TABLE historico_reproducao(
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  PRIMARY KEY (usuario_id, cancao_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
  FOREIGN KEY (cancao_id) REFERENCES cancoes(id)
) engine = InnoDB;

INSERT INTO planos (id, nome_plano, valor) VALUES
  (1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitário', 5.99);

INSERT INTO usuarios (id, nome_usuario, idade, plano_id) VALUES
  (1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 2),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 1);

INSERT INTO artistas (id, nome_artista) VALUES
  (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon');

INSERT INTO albuns (id, nome_album, artista_id) VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 2),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 4);

INSERT INTO cancoes (id, nome_cancao, album_id) VALUES
  (1, 'Soul For Us', 1),
  (2, 'Reflections Of Magic', 1),
  (3, 'Dance With Her Own', 1),
  (4, 'Troubles Of My Inner Fire', 2),
  (5, 'Time Fireworks', 2),
  (6, 'Magic Circus', 3),
  (7, 'Honey, So Do I', 3),
  (8, 'Sweetie, Let\'s Go Wild', 3),
  (9, 'She Knows', 3),
  (10, 'Fantasy For Me', 4),
  (11, 'Celebration Of More', 4),
  (12, 'Rock His Everything', 4),
  (13, 'Home Forever', 4),
  (14, 'Diamond Power', 4),
  (15, 'Honey, Let\'s Be Silly', 4),
  (16, 'Thang Of Thunder', 5),
  (17, 'Words Of Her Life', 5),
  (18, 'Without My Streets', 5);

INSERT INTO usuario_seguindo_artista(usuario_id, artista_id) VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 4);

INSERT INTO historico_reproducao(usuario_id, cancao_id) VALUES
  (1, 1),
  (1, 6),
  (1, 14),
  (1, 16),
  (2, 2),
  (2, 13),
  (2, 15),
  (2, 17),
  (3, 4),
  (3, 6),
  (3, 16),
  (4, 3),
  (4, 11),
  (4, 18);
  
  