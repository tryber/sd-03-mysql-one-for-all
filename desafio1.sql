DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    plan_value DECIMAL(5, 2) NOT NULL
)  ENGINE=INNODB;

CREATE TABLE artist (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL
)  ENGINE=INNODB;

CREATE TABLE `user` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id)
        REFERENCES plan (id)
)  ENGINE=INNODB;

CREATE TABLE `following` (
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (user_id)
        REFERENCES `user` (id),
    FOREIGN KEY (artist_id)
        REFERENCES artist (id),
    PRIMARY KEY (user_id , artist_id)
)  ENGINE=INNODB;

CREATE TABLE album (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id)
        REFERENCES artist (id)
)  ENGINE=INNODB;

CREATE TABLE songs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id)
        REFERENCES album (id)
)  ENGINE=INNODB;

CREATE TABLE `history` (
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    FOREIGN KEY (user_id)
        REFERENCES `user` (id),
    FOREIGN KEY (song_id)
        REFERENCES songs (id),
    PRIMARY KEY (user_id , song_id)
)  ENGINE=INNODB;

INSERT INTO plan (`name`, plan_value)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO artist (`name`)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');
  
INSERT INTO `user` (`name`, age, plan_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO `following` (user_id, artist_id)
VALUES
(1, 1),
(1, 4),
(1,	3),
(2,	1),
(2,	3),
(3,	2),
(3,	1),
(4,	4);

INSERT INTO album (`name`, artist_id)
VALUES
('Envious',	1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs (`name`, album_id)
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

INSERT INTO `history` (user_id, song_id)
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