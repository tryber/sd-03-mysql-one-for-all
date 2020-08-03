DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE cancoes(
    cancao_id INT PRIMARY KEY auto_increment,
    cancao VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE planos(
    plano_id INT PRIMARY KEY auto_increment,
    plano VARCHAR(15) NOT NULL,
    plano_valor DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuarios(
usuario_id INT PRIMARY KEY auto_increment,
usuario VARCHAR(30) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
) engine = InnoDB;

CREATE TABLE historico(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
PRIMARY KEY (usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
) engine = InnoDB;

CREATE TABLE artistas(
    artista_id INT PRIMARY KEY auto_increment,
    artista VARCHAR(30) NOT NULL
) engine = InnoDB;

CREATE TABLE albuns(
album_id INT PRIMARY KEY auto_increment,
album VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
cancao_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
) engine = InnoDB;

CREATE TABLE seguidores (
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;

INSERT INTO planos (plano, plano_valor)
VALUES
  ("gratuito", 0),
  ("familiar", 7.99),
  ("universitário", 5.99);

INSERT INTO cancoes (cancao)
VALUES
  ("Soul For Us"),
  ("Reflections Of Magic"),
  ("Dance With Her Own"),
  ("Troubles Of My Inner Fire"),
  ("Time Fireworks"),
  ("Magic Circus"),
  ("Honey, So Do I"),
  ("Sweetie, Let's Go Wild"),
  ("She Knows"),
  ("Fantasy For Me"),
  ("Celebration Of More"),
  ("Rock His Everything"),
  ("Home Forever"),
  ("Diamond Power"),
  ("Honey, Let's Be Silly"),
  ("Thang Of Thunder"),
  ("Words Of Her Life"),
  ("Without My Streets");
  
INSERT INTO artistas (artista)
VALUES
  ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon");
  
INSERT INTO usuarios (usuario, idade, plano_id)
VALUES
("Thati", 23, 1),
("Cintia", 35, 2),
("Bill", 20, 3),
("Roger", 45, 1);
    
INSERT INTO historico (usuario_id, cancao_id)
VALUES 
(1, 1),
(1, 6),
(1, 14),
(1,16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);

INSERT INTO albuns(album, artista_id, cancao_id)
VALUES
("Envious", 1, 1),
("Envious", 1, 2),
("Envious", 1, 3),
("Exuberant", 1, 4),
("Exuberant", 1, 5),
("Hallowed Steam", 1, 6),
("Hallowed Steam", 1, 7),
("Hallowed Steam", 1, 8),
("Hallowed Steam", 1, 9),
("Incandescent", 1, 10),
("Incandescent", 1, 11),
("Incandescent", 1, 12),
("Incandescent", 1, 13),
("Incandescent", 1, 14),
("Incandescent", 1, 15),
("Incandescent", 1, 16),
("Incandescent", 1, 17),
("Incandescent", 1, 18);
    
INSERT INTO seguidores (usuario_id, artista_id)
VALUES
(1, 1),
(2, 1),
(3, 1),
(3, 2),
(1, 3),
(2, 3),
(1, 4),
(4, 4);
