DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

-- -------------------------------------------------
-- Tabela de Planos
-- -------------------------------------------------    
CREATE TABLE planos (
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,
    valor_plano DECIMAL(3 , 2 ) NOT NULL
)  ENGINE=INNODB;

-- -------------------------------------------------
-- Tabela de Usuários
-- -------------------------------------------------  
CREATE TABLE usuarios (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id)
        REFERENCES planos (plano_id)
)  ENGINE=INNODB;

-- -------------------------------------------------
-- Tabela de Artistas
-- -------------------------------------------------  
CREATE TABLE artistas (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
)  ENGINE=INNODB;

-- -------------------------------------------------
-- Tabela de Albuns
-- -------------------------------------------------  
CREATE TABLE albuns (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_album VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id)
        REFERENCES artistas (artista_id)
)  ENGINE=INNODB;

-- -------------------------------------------------
-- Tabela de Canções
-- -------------------------------------------------  
CREATE TABLE cancoes (
    cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_cancao VARCHAR(50) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id)
        REFERENCES albuns (album_id)
)  ENGINE=INNODB;

-- -------------------------------------------------
-- Tabela de Histórico de Reproduções do Usuário
-- -------------------------------------------------  
CREATE TABLE historico_reproducoes (
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    PRIMARY KEY (usuario_id , cancao_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuarios (usuario_id),
    FOREIGN KEY (cancao_id)
        REFERENCES cancoes (cancao_id)
)  ENGINE=INNODB;

-- -------------------------------------------------
-- Tabela de Seguidores do Artista
-- -------------------------------------------------  
CREATE TABLE seguindo_artista (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (usuario_id , artista_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuarios (usuario_id),
    FOREIGN KEY (artista_id)
        REFERENCES artistas (artista_id)
)  ENGINE=INNODB;

-- -------------------------------------------------
-- Inserindo dados na tabela Planos
-- -------------------------------------------------  
INSERT INTO planos(tipo, valor_plano)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

-- -------------------------------------------------
-- Inserindo dados na tabela Usuarios
-- -------------------------------------------------  
INSERT INTO usuarios(nome, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

-- -------------------------------------------------
-- Inserindo dados na tabela Artistas
-- -------------------------------------------------  
INSERT INTO artistas(nome)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

-- -------------------------------------------------
-- Inserindo dados na tabela Albuns
-- -------------------------------------------------  
INSERT INTO albuns(nome_album, artista_id)
VALUES
('Envious',	1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

-- -------------------------------------------------
-- Inserindo dados na tabela Cancoes
-- -------------------------------------------------  
INSERT INTO cancoes(nome_cancao, album_id)
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

-- -------------------------------------------------
-- Inserindo dados na tabela Historico Reproducoes
-- -------------------------------------------------  
INSERT INTO historico_reproducoes(usuario_id, cancao_id)
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

-- -------------------------------------------------
-- Inserindo dados na tabela Sehguindo Artista
-- -------------------------------------------------  
INSERT INTO seguindo_artista(usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1,	3),
(2,	1),
(2,	3),
(3,	2),
(3,	1),
(4,	4);
