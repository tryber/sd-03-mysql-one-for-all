DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    valor_plano DECIMAL(5, 2) NOT NULL
)  engine=InnoDB;

CREATE TABLE artista (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL
)  engine=InnoDB;

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id)
        REFERENCES plano (id)
)  engine=InnoDB;

CREATE TABLE artists (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (usuario_id)
        REFERENCES usuario (id),
    FOREIGN KEY (artista_id)
        REFERENCES artista (id),
    PRIMARY KEY (usuario_id , artista_id)
)  engine=InnoDB;

CREATE TABLE album (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id)
        REFERENCES artista (id)
)  engine=InnoDB;

CREATE TABLE cancoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id)
        REFERENCES album (id)
)  engine=InnoDB;

CREATE TABLE historico (
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    FOREIGN KEY (usuario_id)
        REFERENCES usuario (id),
    FOREIGN KEY (cancao_id)
        REFERENCES cancoes (id),
    PRIMARY KEY (usuario_id , cancao_id)
)  engine=InnoDB;

INSERT INTO plano (nome, valor_plano)
VALUES
('gratuito', 0),
('universitário', 5.99);
('familiar', 7.99),

INSERT INTO artista (nome)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO usuario (nome, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO artists (usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1,	3),
(2,	1),
(2,	3),
(3,	2),
(3,	1),
(4,	4);

INSERT INTO album (nome, artista_id)
VALUES
('Envious',	1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO cancoes (nome, album_id)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO historico (usuario_id, cancao_id)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
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
